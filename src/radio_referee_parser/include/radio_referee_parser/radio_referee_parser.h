#pragma once

#include <ros/ros.h>
#include <std_msgs/UInt16.h>
#include <std_msgs/Bool.h>
#include <geometry_msgs/PoseArray.h>
#include <rm_msgs/GameRobotHp.h>
#include <cstdint>
#include <nodelet/nodelet.h>

// 标准 packed 属性
#if defined(__GNUC__) || defined(__clang__)
#define __packed __attribute__((packed))
#else
#define __packed
#endif

namespace radio_referee_parser
{

/* 协议 CRC 工具（附录） */
uint8_t  Get_CRC8_Check_Sum (const uint8_t* pchMessage, uint32_t dwLength);
uint16_t Get_CRC16_Check_Sum(const uint8_t* pchMessage, uint32_t dwLength);
bool     Verify_CRC16_Check_Sum(const uint8_t* pchMessage, uint32_t dwLength);

/* 主要命令码 */
enum class MsgType : uint16_t
{
  GAME_ROBOT_HP     = 0x0003,
  ROBOTS_POSITION   = 0x020B,
  BULLET_REMAINING  = 0x0208,
  RFID_STATUS       = 0x0209,
};

class RadioRefereeParser : public nodelet::Nodelet
{
public:
  RadioRefereeParser() = default;
  ~RadioRefereeParser() override = default;

  /* 外部注入本车 ID（收到 0x0201 后调用） */
  void setRobotId(uint16_t id) { robot_id_ = id; }
  uint16_t robotId() const { return robot_id_; }

  virtual void onInit() override;

private:
  ros::NodeHandle nh_;

  /* 订阅原始字节流 */
  ros::Subscriber radio_referee_sub_;

  /* 发布器——红方 */
  ros::Publisher red_all_hp_pub_;
  ros::Publisher red_all_pos_pub_;
  ros::Publisher red_bullet_17mm_pub_;
  ros::Publisher red_bullet_42mm_pub_;
  ros::Publisher red_total_soc_pub_;
  ros::Publisher red_remain_bullet_17mm_pub_;
  ros::Publisher red_remain_bullet_42mm_pub_;
  ros::Publisher red_outpost_buff_point_pub_;
  ros::Publisher red_fort_buff_point_pub_;
  // 红方其他环境/增益状态
  ros::Publisher red_wall_pub_;                   // 环形高地
  ros::Publisher red_trap_high_pub_;              // 梯形高地
  ros::Publisher red_fly_pre_pub_;                // 飞坡前
  ros::Publisher red_fly_post_pub_;               // 飞坡后
  ros::Publisher red_central_low_pub_;            // 中央低
  ros::Publisher red_central_high_pub_;           // 中央高
  ros::Publisher red_highway_low_pub_;            // 公路低
  ros::Publisher red_highway_high_pub_;           // 公路高
  ros::Publisher red_assembly_pub_;               // 装配点
  ros::Publisher red_highway_tunnel_low_pub_;     // 公路隧道低
  ros::Publisher red_highway_tunnel_high_pub_;    // 公路隧道高
  ros::Publisher red_trap_tunnel_low_pub_;        // 梯形隧道低
  ros::Publisher red_trap_tunnel_high_pub_;       // 梯形隧道高

  /* 发布器——蓝方 */
  ros::Publisher blue_all_hp_pub_;
  ros::Publisher blue_all_pos_pub_;
  ros::Publisher blue_bullet_17mm_pub_;
  ros::Publisher blue_bullet_42mm_pub_;
  ros::Publisher blue_total_soc_pub_;
  ros::Publisher blue_remain_bullet_17mm_pub_;
  ros::Publisher blue_remain_bullet_42mm_pub_;
  ros::Publisher blue_outpost_buff_point_pub_;
  ros::Publisher blue_fort_buff_point_pub_;
  // 新增：蓝方其他环境/增益状态
  ros::Publisher blue_wall_pub_;
  ros::Publisher blue_trap_high_pub_;
  ros::Publisher blue_fly_pre_pub_;
  ros::Publisher blue_fly_post_pub_;
  ros::Publisher blue_central_low_pub_;
  ros::Publisher blue_central_high_pub_;
  ros::Publisher blue_highway_low_pub_;
  ros::Publisher blue_highway_high_pub_;
  ros::Publisher blue_assembly_pub_;
  ros::Publisher blue_highway_tunnel_low_pub_;
  ros::Publisher blue_highway_tunnel_high_pub_;
  ros::Publisher blue_trap_tunnel_low_pub_;
  ros::Publisher blue_trap_tunnel_high_pub_;

  /* 公共增益点 */
  ros::Publisher central_buff_point_pub_;

  /* 数据缓存 */
  uint16_t robot_id_ = 0;   // 0 = 尚未获得

  /* 回调 & 解析 */
  void radioRefereeDataCallback(const rm_msgs::GameRobotHp::ConstPtr& msg);
  void parseGameRobotHp(const uint8_t* data, uint16_t len);
  void parseRobotsPosition(const uint8_t* data, uint16_t len);
  void parseBulletAllowance(const uint8_t* data, uint16_t len);
  void parseRfidStatus(const uint8_t* data, uint16_t len);
};

}  // namespace radio_referee_parser