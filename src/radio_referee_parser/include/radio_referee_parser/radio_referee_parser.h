#pragma once

#include <ros/ros.h>
#include <std_msgs/UInt16.h>
#include <std_msgs/Bool.h>
#include <rm_msgs/RadarEnemyPosition.h>
#include <rm_msgs/RadarRadioData.h>
#include <rm_msgs/RadarEnemyHp.h>
#include <rm_msgs/RadarEnemyStatus.h>
#include <rm_msgs/RadarEnemyBulletAllowance.h>
#include <rm_msgs/RadarEnemyBuff.h>
#include <rm_msgs/RadarDoubleKey.h>
#include <cstdint>
#include <nodelet/nodelet.h>
#include <serial/serial.h>
#include <thread>
#include <vector>

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
  ENEMY_POSITION        = 0x0A01,
  ENEMY_HP              = 0x0A02,
  ENEMY_BULLET_ALLOWANCE= 0x0A03,
  ENEMY_STATUS          = 0x0A04,
  ENEMY_BUFF            = 0x0A05,
  DOUBLE_KEY            = 0x0A06,
};

class RadioRefereeParser : public nodelet::Nodelet
{
public:
  RadioRefereeParser() = default;
  ~RadioRefereeParser() override = default;

  virtual void onInit() override;

private:
  ros::NodeHandle nh_;
  serial::Serial serial_;

  /* 串口线程 */
  std::thread serial_thread_;
  void serialThreadLoop();
  
  /* 订阅原始字节流 */
  ros::Subscriber radio_referee_sub_;

  /* 雷达无线链路数据发布器 */
  ros::Publisher enemy_pos_pub_;              // 0x0A01 对方位置
  ros::Publisher enemy_hp_pub_;               // 0x0A02 对方血量
  // 0x0A03 对方允许发弹量
  ros::Publisher enemy_bullet_allowance_pub_; 
  // 0x0A04 对方状态 (金币/领地) - 使用 rm_msgs/RadarEnemyStatus
  ros::Publisher enemy_status_pub_;           
  
  // 0x0A05 对方增益
  ros::Publisher enemy_buff_pub_;

  // 0x0A06 密钥
  ros::Publisher double_key_pub_;

  /* 回调 & 解析 */
  void radioRefereeDataCallback(const rm_msgs::RadarRadioData::ConstPtr& msg);
  
  // 无线链路数据解析函数
  void parseEnemyPosition(const uint8_t* data, uint16_t len);
  void parseEnemyHp(const uint8_t* data, uint16_t len);
  void parseEnemyBulletAllowance(const uint8_t* data, uint16_t len);
  void parseEnemyStatus(const uint8_t* data, uint16_t len);
  void parseEnemyBuff(const uint8_t* data, uint16_t len);
  void parseDoubleKey(const uint8_t* data, uint16_t len);
};

}  // namespace radio_referee_parser