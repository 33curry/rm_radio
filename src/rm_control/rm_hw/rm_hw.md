# rm_hw：硬件接口抽象与电机到 ROS 控制服务器全链路解析

本文基于目录 `rm_ws/src/rm_control/rm_hw` 的源码，说明 rm_hw 如何将 **CAN 总线上的电机反馈**抽象为 **ros_control 的硬件接口**，并最终映射到 **ROS 的控制服务器（controller_manager）**，形成完整的闭环控制链路。

> 代码风格属于 ROS1 + ros_control（`hardware_interface` / `controller_manager` / `transmission_interface` / `joint_limits_interface`）的典型架构。

---

## 1. rm_hw 在系统中的角色

rm_hw 本质是一个 **ros_control 硬件层节点**：

- **向下**：通过 Linux SocketCAN 读取/写入 CAN 帧，驱动 RoboMaster（`rm_xxx`）和 MIT Cheetah（`cheetah_xxx`）电机等外设。
- **向上**：实现 `hardware_interface::RobotHW`（`rm_hw::RmRobotHW`），向 `controller_manager` 提供标准/自定义硬件接口（Actuator、Joint、IMU、GPIO、ToF 等）。
- **中间**：使用 `transmission_interface` 将 *actuator*（电机）与 *joint*（URDF 关节）建立映射，让控制器只需要面向 joint 工作。

入口与控制循环：

- 节点入口：`rm_ws/src/rm_control/rm_hw/src/rm_hw.cpp`
- 控制循环：`rm_ws/src/rm_control/rm_hw/src/control_loop.cpp`
- 硬件实现：`rm_ws/src/rm_control/rm_hw/src/hardware_interface/hardware_interface.cpp`
- 参数解析与 transmission/limits：`rm_ws/src/rm_control/rm_hw/src/hardware_interface/parse.cpp`
- CAN 抽象：`rm_ws/src/rm_control/rm_hw/src/hardware_interface/can_bus.cpp` + `.../socketcan.cpp`

---

## 2. 硬件抽象层（RobotHW）怎么设计

### 2.1 RmRobotHW：把“真实设备”变成“ROS 硬件接口”

`rm_hw::RmRobotHW` 继承自 `hardware_interface::RobotHW`：

- 初始化阶段 `init()`：
  - 从参数服务器读配置（电机/传感器/总线/系数等）
  - 创建底层总线对象 `CanBus`
  - 注册 ros_control 所需的硬件接口（Actuator interfaces、Joint interfaces 等）
  - 从 `/robot_description` 加载 URDF，并加载 transmission 与 joint limits
- 运行阶段：
  - `read()`：从总线更新 Actuator/IMU/ToF/GPIO 的“状态”
  - `write()`：把控制器写入的“命令”映射到 actuator，再通过 CAN 写回电机

核心数据容器：

- `rm_hw::ActData`（`rm_ws/src/rm_control/rm_hw/include/rm_hw/hardware_interface/types.h`）
  - 保存电机的 raw 编码器/速度/电流、温度、累计圈数、多圈位置、低通滤波器等
  - 同时保存命令侧字段：`cmd_effort` / `exe_effort`（以及 MIT 电机的 `cmd_pos/cmd_vel`）
- `rm_hw::ActCoeff`
  - 电机“原始单位 ↔ 工程单位”的换算系数（例如编码器 tick 到 rad）

### 2.2 底层总线抽象：SocketCAN → CanBus → ActData

rm_hw 将 CAN 访问分两层：

1) **SocketCAN**（`.../socketcan.cpp`）

- 直接使用 Linux `PF_CAN` 原始 socket
- 启动接收线程（`select()` + `read()`），收到帧后回调 `reception_handler(frame)`

2) **CanBus**（`.../can_bus.cpp`）

- `SocketCAN::open()` 时把回调绑到 `CanBus::frameCallback()`
- `frameCallback()` 把收到的 `can_frame` + 时间戳缓存到 `read_buffer_`
- `CanBus::read()` 在控制循环中被调用：批量消费 `read_buffer_`，把 raw CAN 数据转换为 `ActData.pos/vel/effort/...`
- `CanBus::write()` 把 `ActData.exe_effort` 等命令打包成 CAN 帧发送

`RmRobotHW` 通过 `CanDataPtr` 把自己维护的 map（按 bus、按 id 索引）“借给” CanBus：

- `type2act_coeffs_`：type → 系数
- `bus_id2act_data_[bus]`：id → ActData
- `bus_id2imu_data_[bus]` / `bus_id2tof_data_[bus]`

这样 CanBus 就能在不依赖上层逻辑的情况下，直接读写这些数据结构。

---

## 3. 电机从“获取”到“抽象为硬件接口”再到“映射到 ROS 控制服务器”的全流程

下面按时间顺序给出一条电机闭环控制路径（读 → 控制 → 写）。

### 3.1 启动：rm_hw 节点与控制循环

1) `rm_hw` 节点启动（`rm_hw.cpp`）

- `ros::AsyncSpinner spinner(2)`：让 ROS 回调（尤其是 controller_manager 的 service 调用）不阻塞主控制循环
- 创建 `std::shared_ptr<rm_hw::RmRobotHW>`
- 创建 `rm_hw::RmRobotHWLoop control_loop(nh, rm_hw_hw_interface)`

2) `RmRobotHWLoop` 构造（`control_loop.cpp`）

- 从私有参数（`~loop_frequency/~cycle_time_error_threshold/~thread_priority`）读控制周期配置
- 调用 `hardware_interface_->init(nh, nh_p)` 完成硬件层初始化
- 创建 `controller_manager::ControllerManager(hardware_interface_.get(), nh_)`
- 启动循环线程，周期执行 `update()`：
  - `read()` → `controller_manager_->update()` → `write()`

> 这里的 “ROS 控制服务器” 就是 `controller_manager`：它提供 load/switch/unload 等服务，并负责按顺序调用所有已运行 controller 的 `update()`。
>
> 备注：`RmRobotHWLoop` 中的 `loop_running_` 是 `std::atomic_bool`，在当前代码里没有显式置为 `true`；若未被初始化为真，循环线程可能不会真正跑起来（这属于实现细节/潜在 bug，但不影响本文对设计链路的解析）。

### 3.2 初始化：电机如何被“抽象成硬件接口”

#### (A) 参数 → 电机对象（ActData）

`RmRobotHW::init()`（`hardware_interface.cpp`）会解析参数：

- `~actuator_coefficient`：由 `parseActCoeffs()` 解析（`parse.cpp`），形成 `type2act_coeffs_`
- `~actuators`：由 `parseActData()` 解析（`parse.cpp`）
  - 每个电机必须有：`bus`、`type`、`id`
  - 创建并插入 `bus_id2act_data_[bus][id] = ActData{...}`
  - 同时为每个电机创建 `LowPassFilter`（用于速度滤波），其参数从 `~actuators/<name>/...` 读取（例如 `lp_cutoff_frequency`）

配置示例可见：

- `rm_ws/src/rm_control/rm_hw/config/hw_config_template.yaml`
- `rm_ws/src/rm_control/rm_hw/config/actuator_coefficient.yaml`
- 单电机测试：`rm_ws/src/rm_control/rm_hw/test/test_motor.yaml`

#### (B) ActData → ros_control actuator 接口（handle 注册）

`parseActData()` 对每个电机注册三类接口（`parse.cpp`）：

1) `hardware_interface::ActuatorStateHandle`

- 绑定电机 name → `&ActData.pos / &ActData.vel / &ActData.effort`
- 注册到 `hardware_interface::ActuatorStateInterface`

2) `hardware_interface::ActuatorHandle`（用于 Effort 命令）

- “命令写入地址”绑定到 `&ActData.exe_effort`
- 注册到 `hardware_interface::EffortActuatorInterface`

3) `rm_control::ActuatorExtraHandle`（rm_common 的扩展接口）

- 绑定 `halted/need_calibration/calibrated/...` 等额外状态
- 注册到 `rm_control::ActuatorExtraInterface`

到这里，电机已经被抽象成 ros_control 可访问的 actuator（状态 + effort 命令）。

#### (C) actuator ↔ joint：通过 transmission 从 URDF 建立映射

rm_hw 并不直接“把电机当 joint”，而是遵循 ros_control 标准做法：

1) `loadUrdf()` 从参数 `/robot_description` 读取 URDF 字符串（`parse.cpp`）
2) `setupTransmission()` 创建并执行 `transmission_interface::TransmissionInterfaceLoader`（`parse.cpp`）
   - loader 解析 URDF 中的 `<transmission>` 段
   - 根据 `<type>` 加载对应 transmission（SimpleTransmission 或自定义的 MultiActuatorTransmission）
   - 将 actuator handle 与 joint handle 连接起来，并在 `RobotHW` 内部生成/注册 joint interfaces（例如 `hardware_interface::JointStateInterface`、`hardware_interface::EffortJointInterface`）
3) rm_hw 取出两个关键的“传播器接口”：
   - `ActuatorToJointStateInterface* act_to_jnt_state_`
   - `JointToActuatorEffortInterface* jnt_to_act_effort_`

单电机 + SimpleTransmission 的 URDF 示例（来自 `rm_ws/src/rm_control/rm_hw/test/test_motor.xacro`）：

```xml
<transmission name="mit_joint_trans">
  <type>transmission_interface/SimpleTransmission</type>
  <actuator name="mit_joint_motor">
    <mechanicalReduction>1.0</mechanicalReduction>
  </actuator>
  <joint name="mit_joint">
    <hardwareInterface>hardware_interface/EffortJointInterface</hardwareInterface>
    <offset>-0.004</offset>
  </joint>
</transmission>
```

多电机映射到一个 joint 的 transmission 插件：

- 插件声明：`rm_ws/src/rm_control/rm_hw/rm_hw_loader_plugins.xml`
- 实现：`rm_ws/src/rm_control/rm_hw/include/rm_hw/transmission/multi_actuator_transmission.h`
- loader：`rm_ws/src/rm_control/rm_hw/src/transmission/multi_actuator_transmission_loader.cpp`

其核心思想是：

- `actuatorToJoint*()`：将多个 actuator 的状态“合成”一个 joint 状态
- `jointToActuatorEffort()`：将一个 joint effort “分摊”到多个 actuator effort

#### (D) joint limits：在 joint 层做限幅/软限位

`setupJointLimit()`（`parse.cpp`）：

- 从 URDF / rosparam 读取 joint limit
- 将每个 `hardware_interface::JointHandle` 注册到：
  - `joint_limits_interface::EffortJointSaturationInterface`（硬限幅）
  - 或 `joint_limits_interface::EffortJointSoftLimitsInterface`（软限位）

这样限幅发生在 **joint 命令层**，随后再传播到 actuator 命令层。

### 3.3 运行时：读链路（电机反馈 → joint state → 控制器）

控制循环每周期执行 `RmRobotHW::read()`（`hardware_interface.cpp`）：

1) `CanBus::read()` 消费接收缓存

- `SocketCAN` 接收线程不断将 CAN 帧塞入 `CanBus::read_buffer_`
- 主循环 `CanBus::read()` 对每个帧：
  - RoboMaster 电机：`frame.can_id == 电机 id(例如 0x201)`  
    - 解包编码器/转速/电流/温度
    - 处理多圈（`q_circle`）
    - 用 `ActCoeff.act2pos/act2vel/act2effort` 转为工程单位 `ActData.pos/vel/effort`
    - 对速度做低通滤波（`LowPassFilter`）

2) 掉线/过温保护（`RmRobotHW::read()`）

- 若 `time - act_data.stamp > 0.1s` 或 `temp > 99`，将该电机标记 `halted=true` 并清零部分状态/标记未校准

3) actuator → joint 状态传播

- `act_to_jnt_state_->propagate()`  
  transmission 根据 URDF 映射把 `ActuatorStateInterface` 中的状态传播到 `JointStateInterface`（joint 的 `pos/vel/effort` 会更新）

4) 防止“无控制器时的软限位振荡”

- 将所有 `EffortJointInterface` 的 command 置 0：`effort_joint_handle.setCommand(0.)`

到这里，**控制器**（controller_manager 管理的 controllers）在 `update()` 时看到的是 joint 级别的状态，而不是电机级别 raw 数据。

### 3.4 运行时：写链路（控制器命令 → joint cmd → actuator cmd → CAN → 电机）

控制循环每周期执行 `controller_manager_->update()` 后，会执行 `RmRobotHW::write()`（`hardware_interface.cpp`）：

1) joint effort → actuator effort（第一次传播）

- `jnt_to_act_effort_->propagate()`  
  transmission 把每个 joint 的 effort command 分配到 actuator（写入 `ActData.exe_effort`）

2) joint limits 限幅（发生在 joint 层）

- 先把当前 `ActData.exe_effort` 备份到 `ActData.cmd_effort`
- 执行：
  - `effort_jnt_saturation_interface_.enforceLimits(period)`
  - `effort_jnt_soft_limits_interface_.enforceLimits(period)`
- 再次 `jnt_to_act_effort_->propagate()`  
  让“限幅后的 joint command”重新转换为 actuator 命令（更新 `ActData.exe_effort`）

3) CAN 打包并下发到电机

`CanBus::write()`（`can_bus.cpp`）按电机类型生成 CAN 帧：

- RoboMaster（`type` 包含 `rm`）：
  - `cmd_raw = minAbs(act_coeff.effort2act * ActData.exe_effort, act_coeff.max_out)`
  - 将 0x201~0x204 打到 `0x200` 帧（`rm_frame0_`），0x205~0x208 打到 `0x1FF` 帧（`rm_frame1_`），每个电机占 2 字节
  - 发送帧到 CAN
- MIT Cheetah（`type` 包含 `cheetah`）：
  - 按其协议将 `cmd_pos/cmd_vel/exe_effort` 编码进 8 字节并发送（当前实现仍主要把它当 effort actuator 使用）

4) 监控输出

- `publishActuatorState()` 以 100Hz 发布 `/actuator_states`（`rm_msgs/ActuatorState`），包含每个电机的 raw 与工程量、命令等信息，便于调试闭环链路。

---

## 4. “映射到 ROS 服务器（controller_manager）”具体指什么

在 ROS1 ros_control 里，controller_manager 扮演“控制服务器”的角色：

- 对外提供控制器管理服务（load/unload/switch/list 等）
- 在每个周期调用已启动 controller 的 `update()`，这些 controller 通过 joint interfaces 读状态、写命令

rm_hw 的映射关系可以概括为：

1) **电机 ActData** 绑定到 **ActuatorStateInterface / EffortActuatorInterface**
2) **URDF transmission** 将 actuator 与 joint 建立关系，并生成 **JointStateInterface / EffortJointInterface**
3) **controller_manager** 只面向 joint interface 工作（控制器配置里写的是 joint 名称）
4) `RmRobotHWLoop::update()` 把三段闭环串起来：`read()`（更新 joint state）→ `controller_manager.update()`（生成 joint cmd）→ `write()`（下发到电机）

测试启动文件展示了 controller_manager 如何接入 rm_hw：

- `rm_ws/src/rm_control/rm_hw/test/test_motor.launch`
  - 启动 `rm_hw`
  - 再启动 `controller_manager/spawner` 加载并启动 controllers（其中 effort controller 绑定 `joint: mit_joint`）

---

## 5. 配置要点（电机链路相关）

### 5.1 rm_hw 参数（来自 yaml）

`rm_hw` 使用私有命名空间参数（`~`），典型结构见 `rm_ws/src/rm_control/rm_hw/config/hw_config_template.yaml`：

- `rm_hw/bus`: 例如 `[can0, can1]`（会创建对应 `CanBus`）
- `rm_hw/actuator_coefficient`: type → 系数（必须覆盖到你在 actuators 中使用的 type）
- `rm_hw/actuators/<name>`:
  - `bus`: `can0`/`can1`
  - `id`: RoboMaster 常用 `0x201~0x208`
  - `type`: `rm_3508` / `rm_6020` / `rm_2006` / `cheetah` 等（用于查系数与协议分支）
  - 滤波参数（由 `LowPassFilter` 读取）：例如 `lp_cutoff_frequency`

### 5.2 URDF transmission（joint ↔ motor 的关键）

只要 `<transmission>` 里 actuator name 与参数中的电机 name 对齐（例如 `mit_joint_motor`），并指定 joint 使用 `hardware_interface/EffortJointInterface`，rm_hw 就能在运行时通过 transmission 完成：

- 电机反馈 → joint state
- joint effort cmd → 电机 effort cmd

---

## 6. 一句话总结电机全链路

CAN 帧 → `SocketCAN` 接收线程 → `CanBus::read()` 解包写入 `ActData` → `ActuatorStateInterface` → transmission `act_to_jnt_state_->propagate()` 得到 joint state → controller_manager 运行控制器写 joint effort → joint limits 限幅 → transmission `jnt_to_act_effort_->propagate()` 写入 `ActData.exe_effort` → `CanBus::write()` 打包成 CAN 帧 → 电机执行。
