#include "radio_referee_parser/radio_referee_parser.h"
#include <array>
#include <cstring>
#include <vector>
#include <algorithm>
#include <pluginlib/class_list_macros.h>

PLUGINLIB_EXPORT_CLASS(radio_referee_parser::RadioRefereeParser, nodelet::Nodelet)
//radio_referee_parser.cpp

// =====================
// CRC8/CRC16查表算法
// =====================
namespace radio_referee_parser {
const uint8_t CRC8_TAB[256] = {
  0x00,0x5e,0xbc,0xe2,0x61,0x3f,0xdd,0x83,0xc2,0x9c,0x7e,0x20,0xa3,0xfd,0x1f,0x41,
  0x9d,0xc3,0x21,0x7f,0xfc,0xa2,0x40,0x1e,0x5f,0x01,0xe3,0xbd,0x3e,0x60,0x82,0xdc,
  0x23,0x7d,0x9f,0xc1,0x42,0x1c,0xfe,0xa0,0xe1,0xbf,0x5d,0x03,0x80,0xde,0x3c,0x62,
  0xbe,0xe0,0x02,0x5c,0xdf,0x81,0x63,0x3d,0x7c,0x22,0xc0,0x9e,0x1d,0x43,0xa1,0xff,
  0x46,0x18,0xfa,0xa4,0x27,0x79,0x9b,0xc5,0x84,0xda,0x38,0x66,0xe5,0xbb,0x59,0x07,
  0xdb,0x85,0x67,0x39,0xba,0xe4,0x06,0x58,0x19,0x47,0xa5,0xfb,0x78,0x26,0xc4,0x9a,
  0x65,0x3b,0xd9,0x87,0x04,0x5a,0xb8,0xe6,0xa7,0xf9,0x1b,0x45,0xc6,0x98,0x7a,0x24,
  0xf8,0xa6,0x44,0x1a,0x99,0xc7,0x25,0x7b,0x3a,0x64,0x86,0xd8,0x5b,0x05,0xe7,0xb9,
  0x8c,0xd2,0x30,0x6e,0xed,0xb3,0x51,0x0f,0x4e,0x10,0xf2,0xac,0x2f,0x71,0x93,0xcd,
  0x11,0x4f,0xad,0xf3,0x70,0x2e,0xcc,0x92,0xd3,0x8d,0x6f,0x31,0xb2,0xec,0x0e,0x50,
  0xaf,0xf1,0x13,0x4d,0xce,0x90,0x72,0x2c,0x6d,0x33,0xd1,0x8f,0x0c,0x52,0xb0,0xee,
  0x32,0x6c,0x8e,0xd0,0x53,0x0d,0xef,0xb1,0xf0,0xae,0x4c,0x12,0x91,0xcf,0x2d,0x73,
  0xca,0x94,0x76,0x28,0xab,0xf5,0x17,0x49,0x08,0x56,0xb4,0xea,0x69,0x37,0xd5,0x8b,
  0x57,0x09,0xeb,0xb5,0x36,0x68,0x8a,0xd4,0x95,0xcb,0x29,0x77,0xf4,0xaa,0x48,0x16,
  0xe9,0xb7,0x55,0x0b,0x88,0xd6,0x34,0x6a,0x2b,0x75,0x97,0xc9,0x4a,0x14,0xf6,0xa8,
  0x74,0x2a,0xc8,0x96,0x15,0x4b,0xa9,0xf7,0xb6,0xe8,0x0a,0x54,0xd7,0x89,0x6b,0x35
};
const uint16_t CRC16_TAB[256] = {
  0x0000,0x1189,0x2312,0x329b,0x4624,0x57ad,0x6536,0x74bf,0x8c48,0x9dc1,0xaf5a,0xbed3,0xca6c,0xdbe5,0xe97e,0xf8f7,
  0x1081,0x0108,0x3393,0x221a,0x56a5,0x472c,0x75b7,0x643e,0x9cc9,0x8d40,0xbfdb,0xae52,0xdaed,0xcb64,0xf9ff,0xe876,
  0x2102,0x308b,0x0210,0x1399,0x6726,0x76af,0x4434,0x55bd,0xad4a,0xbcc3,0x8e58,0x9fd1,0xeb6e,0xfae7,0xc87c,0xd9f5,
  0x3183,0x200a,0x1291,0x0318,0x77a7,0x662e,0x54b5,0x453c,0xbdcb,0xac42,0x9ed9,0x8f50,0xfbef,0xea66,0xd8fd,0xc974,
  0x4204,0x538d,0x6116,0x709f,0x0420,0x15a9,0x2732,0x36bb,0xce4c,0xdfc5,0xed5e,0xfcd7,0x8868,0x99e1,0xab7a,0xbaf3,
  0x5285,0x430c,0x7197,0x601e,0x14a1,0x0528,0x37b3,0x263a,0xdecd,0xcf44,0xfddf,0xec56,0x98e9,0x8960,0xbbfb,0xaa72,
  0x6306,0x728f,0x4014,0x519d,0x2522,0x34ab,0x0630,0x17b9,0xef4e,0xfec7,0xcc5c,0xddd5,0xa96a,0xb8e3,0x8a78,0x9bf1,
  0x7387,0x620e,0x5095,0x411c,0x35a3,0x242a,0x16b1,0x0738,0xffcf,0xee46,0xdcdd,0xcd54,0xb9eb,0xa862,0x9af9,0x8b70,
  0x8408,0x9581,0xa71a,0xb693,0xc22c,0xd3a5,0xe13e,0xf0b7,0x0840,0x19c9,0x2b52,0x3adb,0x4e64,0x5fed,0x6d76,0x7cff,
  0x9489,0x8500,0xb79b,0xa612,0xd2ad,0xc324,0xf1bf,0xe036,0x18c1,0x0948,0x3bd3,0x2a5a,0x5ee5,0x4f6c,0x7df7,0x6c7e,
  0xa50a,0xb483,0x8618,0x9791,0xe32e,0xf2a7,0xc03c,0xd1b5,0x2942,0x38cb,0x0a50,0x1bd9,0x6f66,0x7eef,0x4c74,0x5dfd,
  0xb58b,0xa402,0x9699,0x8710,0xf3af,0xe226,0xd0bd,0xc134,0x39c3,0x284a,0x1ad1,0x0b58,0x7fe7,0x6e6e,0x5cf5,0x4d7c,
  0xc60c,0xd785,0xe51e,0xf497,0x8028,0x91a1,0xa33a,0xb2b3,0x4a44,0x5bcd,0x6956,0x78df,0x0c60,0x1de9,0x2f72,0x3efb,
  0xd68d,0xc704,0xf59f,0xe416,0x90a9,0x8120,0xb3bb,0xa232,0x5ac5,0x4b4c,0x79d7,0x685e,0x1ce1,0x0d68,0x3ff3,0x2e7a,
  0xe70e,0xf687,0xc41c,0xd595,0xa12a,0xb0a3,0x8238,0x93b1,0x6b46,0x7acf,0x4854,0x59dd,0x2d62,0x3ceb,0x0e70,0x1ff9,
  0xf78f,0xe606,0xd49d,0xc514,0xb1ab,0xa022,0x92b9,0x8330,0x7bc7,0x6a4e,0x58d5,0x495c,0x3de3,0x2c6a,0x1ef1,0x0f78
};

uint8_t Get_CRC8_Check_Sum(const uint8_t* pchMessage, uint32_t dwLength) {
  uint8_t ucCRC8 = 0xff;
  while (dwLength--) {
    ucCRC8 = CRC8_TAB[ucCRC8 ^ *pchMessage++];
  }
  return ucCRC8;
}
uint16_t Get_CRC16_Check_Sum(const uint8_t* pchMessage, uint32_t dwLength) {
  uint16_t wCRC = 0xffff;
  while (dwLength--) {
    wCRC = (wCRC >> 8) ^ CRC16_TAB[(wCRC ^ *pchMessage++) & 0xff];
  }
  return wCRC;
}
bool Verify_CRC16_Check_Sum(const uint8_t* pchMessage, uint32_t dwLength) {
  if (dwLength < 2) return false;
  uint16_t wCRC = Get_CRC16_Check_Sum(pchMessage, dwLength - 2);
  uint16_t wCRC_recv = pchMessage[dwLength - 2] | (pchMessage[dwLength - 1] << 8);
  return wCRC == wCRC_recv;
}

void RadioRefereeParser::onInit()
{
  nh_ = getPrivateNodeHandle();

  // Load robot_id from parameter server, default to 1 (Red Hero)
  nh_.param<int>("robot_id", (int&)robot_id_, 1);

  // Subscribe to radio referee data
  // Note: Adjust the topic name based on your radio node's actual topic
  radio_referee_sub_ = nh_.subscribe("/radio/referee_data", 10,
      &RadioRefereeParser::radioRefereeDataCallback, this);

  // Initialize publishers - Red team
  red_all_hp_pub_ = nh_.advertise<rm_msgs::GameRobotHp>("/referee_parser/red/all_robot_hp", 1);
  red_all_pos_pub_ = nh_.advertise<geometry_msgs::PoseArray>("/referee_parser/red/all_robot_position", 1);

  // Initialize publishers - Blue team
  blue_all_hp_pub_ = nh_.advertise<rm_msgs::GameRobotHp>("/referee_parser/blue/all_robot_hp", 1);
  blue_all_pos_pub_ = nh_.advertise<geometry_msgs::PoseArray>("/referee_parser/blue/all_robot_position", 1);

  // Initialize publishers - Bullet remaining
  red_bullet_17mm_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/red/bullet_17mm", 1);
  red_bullet_42mm_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/red/bullet_42mm", 1);
  blue_bullet_17mm_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/blue/bullet_17mm", 1);
  blue_bullet_42mm_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/blue/bullet_42mm", 1);

  // Initialize publishers - Team info
  red_total_soc_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/red/total_soc", 1);
  blue_total_soc_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/blue/total_soc", 1);
  red_remain_bullet_17mm_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/red/remain_bullet_17mm", 1);
  red_remain_bullet_42mm_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/red/remain_bullet_42mm", 1);
  blue_remain_bullet_17mm_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/blue/remain_bullet_17mm", 1);
  blue_remain_bullet_42mm_pub_ = nh_.advertise<std_msgs::UInt16>("/referee_parser/blue/remain_bullet_42mm", 1);

  // Initialize publishers - Buff point status
  red_outpost_buff_point_pub_ = nh_.advertise<std_msgs::Bool>("/referee_parser/red/outpost_buff_point", 1);
  blue_outpost_buff_point_pub_ = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/outpost_buff_point", 1);
  red_fort_buff_point_pub_ = nh_.advertise<std_msgs::Bool>("/referee_parser/red/fort_buff_point", 1);
  blue_fort_buff_point_pub_ = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/fort_buff_point", 1);
  central_buff_point_pub_ = nh_.advertise<std_msgs::Bool>("/referee_parser/central_buff_point", 1);

  // Initialize publishers - Red environment
  red_wall_pub_               = nh_.advertise<std_msgs::Bool>("/referee_parser/red/ring_highland", 1);
  red_trap_high_pub_          = nh_.advertise<std_msgs::Bool>("/referee_parser/red/trapezoidal_highland", 1);
  red_fly_pre_pub_            = nh_.advertise<std_msgs::Bool>("/referee_parser/red/flying_slope_pre", 1);
  red_fly_post_pub_           = nh_.advertise<std_msgs::Bool>("/referee_parser/red/flying_slope_post", 1);
  red_central_low_pub_        = nh_.advertise<std_msgs::Bool>("/referee_parser/red/central_highland_low", 1);
  red_central_high_pub_       = nh_.advertise<std_msgs::Bool>("/referee_parser/red/central_highland_high", 1);
  red_highway_low_pub_        = nh_.advertise<std_msgs::Bool>("/referee_parser/red/highway_low", 1);
  red_highway_high_pub_       = nh_.advertise<std_msgs::Bool>("/referee_parser/red/highway_high", 1);
  red_assembly_pub_           = nh_.advertise<std_msgs::Bool>("/referee_parser/red/assembly_point", 1);
  red_highway_tunnel_low_pub_ = nh_.advertise<std_msgs::Bool>("/referee_parser/red/highway_tunnel_low", 1);
  red_highway_tunnel_high_pub_= nh_.advertise<std_msgs::Bool>("/referee_parser/red/highway_tunnel_high", 1);
  red_trap_tunnel_low_pub_    = nh_.advertise<std_msgs::Bool>("/referee_parser/red/trapezoidal_tunnel_low", 1);
  red_trap_tunnel_high_pub_   = nh_.advertise<std_msgs::Bool>("/referee_parser/red/trapezoidal_tunnel_high", 1);

  // Initialize publishers - Blue environment
  blue_wall_pub_               = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/ring_highland", 1);
  blue_trap_high_pub_          = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/trapezoidal_highland", 1);
  blue_fly_pre_pub_            = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/flying_slope_pre", 1);
  blue_fly_post_pub_           = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/flying_slope_post", 1);
  blue_central_low_pub_        = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/central_highland_low", 1);
  blue_central_high_pub_       = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/central_highland_high", 1);
  blue_highway_low_pub_        = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/highway_low", 1);
  blue_highway_high_pub_       = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/highway_high", 1);
  blue_assembly_pub_           = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/assembly_point", 1);
  blue_highway_tunnel_low_pub_ = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/highway_tunnel_low", 1);
  blue_highway_tunnel_high_pub_= nh_.advertise<std_msgs::Bool>("/referee_parser/blue/highway_tunnel_high", 1);
  blue_trap_tunnel_low_pub_    = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/trapezoidal_tunnel_low", 1);
  blue_trap_tunnel_high_pub_   = nh_.advertise<std_msgs::Bool>("/referee_parser/blue/trapezoidal_tunnel_high", 1);

  ROS_INFO("Radio Referee Parser initialized - subscribing to radio referee data");
}

// Main callback: receives radio data and dispatches based on msg type
void RadioRefereeParser::radioRefereeDataCallback(const rm_msgs::GameRobotHp::ConstPtr& msg)
  // =====================
  // 数据接收与协议化拼包区域
  // =====================
  // 说明：本回调持续接收原始字节流，自动查找帧头、拼包、校验、分发
{
  // 协议化缓冲区拼包、校验、分发
  static std::vector<uint8_t> buffer;
  // 假设msg->data为原始字节流（如有不同请调整）
  const uint8_t* raw = reinterpret_cast<const uint8_t*>(&msg->ally_1_robot_HP);
  buffer.insert(buffer.end(), raw, raw + sizeof(msg->ally_1_robot_HP) * 7 + sizeof(msg->ally_outpost_HP) + sizeof(msg->ally_base_HP));

  // 结合协议：SOF=0xA5，帧头5字节（SOF+长度+序号+CRC8），命令码2字节，帧尾2字节（CRC16）
  constexpr uint8_t SOF = 0xA5;
  constexpr size_t FRAME_HEADER_LEN = 5;
  constexpr size_t FRAME_TAIL_LEN = 2;
  while (true) {
  // 查找帧头（SOF=0xA5）
    auto sof = std::find(buffer.begin(), buffer.end(), SOF);
    if (sof == buffer.end()) break;
    size_t sof_index = std::distance(buffer.begin(), sof);
    if (buffer.size() < sof_index + FRAME_HEADER_LEN) break;
  // 解析数据长度（协议规定为帧头第2-3字节，单位字节）
    uint16_t data_length = buffer[sof_index + 1] | (buffer[sof_index + 2] << 8);
    size_t total_len = FRAME_HEADER_LEN + 2 + data_length + FRAME_TAIL_LEN;
    if (buffer.size() < sof_index + total_len) break;
    // CRC8查表校验
    if (Get_CRC8_Check_Sum(&buffer[sof_index], 4) != buffer[sof_index + 4]) {
      buffer.erase(buffer.begin(), buffer.begin() + sof_index + 1);
      continue;
    }
    // CRC16查表校验
    if (!Verify_CRC16_Check_Sum(&buffer[sof_index], total_len)) {
      buffer.erase(buffer.begin(), buffer.begin() + sof_index + 1);
      continue;
    }
  // 命令码（协议规定帧头后紧跟2字节，低字节在前）
    uint16_t cmd_id = buffer[sof_index + FRAME_HEADER_LEN] | (buffer[sof_index + FRAME_HEADER_LEN + 1] << 8);
    
  // 数据体（命令码后紧跟，长度为data_length）
    const uint8_t* payload = &buffer[sof_index + FRAME_HEADER_LEN + 2];
    uint16_t payload_len = data_length;
  // =====================
  // 按cmd_id分发到不同解析函数
  // =====================
    switch (cmd_id) {
      case 0x0003: // 机器人血量 game_robot_HP_t
        parseGameRobotHp(payload, payload_len);
        break;
      case 0x020B: // 机器人位置 ground_robot_position_t
        parseRobotsPosition(payload, payload_len);
        break;
      case 0x0208: // 剩余发弹量 projectile_allowance_t
        parseBulletAllowance(payload, payload_len);
        break;
      case 0x0209: // RFID状态 rfid_status_t
        parseRfidStatus(payload, payload_len);
        break;
    }
    // 移除已处理数据
    buffer.erase(buffer.begin(), buffer.begin() + sof_index + total_len);
  }
}

void RadioRefereeParser::parseGameRobotHp(const uint8_t* data, uint16_t length)
{
  // =====================
  // 机器人血量包解析（cmd_id=0x0003，结构体game_robot_HP_t）
  // =====================
  struct GameRobotHpRaw
  {
    uint16_t ally_1_robot_HP;
    uint16_t ally_2_robot_HP;
    uint16_t ally_3_robot_HP;
    uint16_t ally_4_robot_HP;
    uint16_t reserved;
    uint16_t ally_7_robot_HP;
    uint16_t ally_outpost_HP;
    uint16_t ally_base_HP;
  } __packed;
  
  if (length < sizeof(GameRobotHpRaw)) return;

  const GameRobotHpRaw* hp_data = reinterpret_cast<const GameRobotHpRaw*>(data);

  // 按robot_id_判断队伍
  bool is_red = (robot_id_ >= 1 && robot_id_ <= 11);

  rm_msgs::GameRobotHp big_hp_msg;
  big_hp_msg.ally_1_robot_HP = hp_data->ally_1_robot_HP;
  big_hp_msg.ally_2_robot_HP = hp_data->ally_2_robot_HP;
  big_hp_msg.ally_3_robot_HP = hp_data->ally_3_robot_HP;
  big_hp_msg.ally_4_robot_HP = hp_data->ally_4_robot_HP;
  // big_hp_msg.reserved = hp_data->reserved;
  big_hp_msg.ally_7_robot_HP = hp_data->ally_7_robot_HP;
  big_hp_msg.ally_outpost_HP = hp_data->ally_outpost_HP;
  big_hp_msg.ally_base_HP    = hp_data->ally_base_HP;

  if (is_red) {
    red_all_hp_pub_.publish(big_hp_msg);
  } else {
    blue_all_hp_pub_.publish(big_hp_msg);
  }
}

void RadioRefereeParser::parseRobotsPosition(const uint8_t* data, uint16_t length)
{
  // =====================
  // 机器人位置包解析（cmd_id=0x020B，结构体ground_robot_position_t）
  // =====================
  struct RobotsPositionRaw
  {
    float hero_x;
    float hero_y;
    float engineer_x;
    float engineer_y;
    float standard_3_x;
    float standard_3_y;
    float standard_4_x;
    float standard_4_y;
    float reserved_1;
    float reserved_2;
  } __packed;

  if (length < sizeof(RobotsPositionRaw)) return;

  const RobotsPositionRaw* pos_data = reinterpret_cast<const RobotsPositionRaw*>(data);

  // 按robot_id_判断队伍
  bool is_red = (robot_id_ >= 1 && robot_id_ <= 11);

  geometry_msgs::PoseArray poses_msg;
  poses_msg.header.frame_id = "map"; 
  poses_msg.header.stamp = ros::Time::now();

  auto add_pose = [&](float x, float y) {
      geometry_msgs::Pose p;
      p.position.x = x;
      p.position.y = y;
      p.position.z = 0;
      p.orientation.w = 1.0; 
      poses_msg.poses.push_back(p);
  };
  add_pose(pos_data->hero_x, pos_data->hero_y);             
  add_pose(pos_data->engineer_x, pos_data->engineer_y);     
  add_pose(pos_data->standard_3_x, pos_data->standard_3_y); 
  add_pose(pos_data->standard_4_x, pos_data->standard_4_y); 

  if (is_red) {
    red_all_pos_pub_.publish(poses_msg);
  } else {
    blue_all_pos_pub_.publish(poses_msg);
  }
}

void RadioRefereeParser::parseBulletAllowance(const uint8_t* data, uint16_t length)
{
  // =====================
  // 剩余发弹量包解析（cmd_id=0x0208，结构体projectile_allowance_t）
  // =====================
  
  struct BulletAllowanceRaw
  {
    uint16_t bullet_allowance_num_17_mm;
    uint16_t bullet_allowance_num_42_mm;
    uint16_t projectile_allowance_fortress;
    uint16_t coin_remaining_num;
  } __packed;

  if (length < sizeof(BulletAllowanceRaw)) return;

  const BulletAllowanceRaw* bullet_data = reinterpret_cast<const BulletAllowanceRaw*>(data);

  // 按robot_id_判断队伍
  bool is_red = (robot_id_ >= 1 && robot_id_ <= 11);
  std_msgs::UInt16 bullet_17mm, bullet_42mm, coin;
  bullet_17mm.data = bullet_data->bullet_allowance_num_17_mm;
  bullet_42mm.data = bullet_data->bullet_allowance_num_42_mm;
  coin.data = bullet_data->coin_remaining_num;
  if (is_red) {
    red_bullet_17mm_pub_.publish(bullet_17mm);
    red_bullet_42mm_pub_.publish(bullet_42mm);
    red_remain_bullet_17mm_pub_.publish(bullet_17mm);
    red_remain_bullet_42mm_pub_.publish(bullet_42mm);
    red_total_soc_pub_.publish(coin);
  } else {
    blue_bullet_17mm_pub_.publish(bullet_17mm);
    blue_bullet_42mm_pub_.publish(bullet_42mm);
    blue_remain_bullet_17mm_pub_.publish(bullet_17mm);
    blue_remain_bullet_42mm_pub_.publish(bullet_42mm);
    blue_total_soc_pub_.publish(coin);
  }
}

void RadioRefereeParser::parseRfidStatus(const uint8_t* data, uint16_t length)
{
  // =====================
  // RFID/增益点状态包解析（cmd_id=0x0209，结构体rfid_status_t）
  // =====================
  
  struct RfidStatusRaw
  {
    uint32_t field_1;   // First 32 bits of status
    uint32_t field_2;   // Next 32 bits of status
    uint32_t field_3;   // Next 32 bits of status
  } __packed;

  if (length < sizeof(RfidStatusRaw)) return;

  const RfidStatusRaw* rfid_data = reinterpret_cast<const RfidStatusRaw*>(data);

  // 这里的 bit 定义基于协议文档中的“相对视角”（己方/对方）
  // 1-11号机(红方): "己方"=Red, "对方"=Blue
  // 101-111号机(蓝方): "己方"=Blue, "对方"=Red
  bool is_red = (robot_id_ >= 1 && robot_id_ <= 11);

  enum : uint32_t {
    BIT_ENEMY_RING_HIGHLAND        = 2u,  // 对方环形高地（中央高地占领状态）
    BIT_ENEMY_TRAPEZOIDAL_HIGHLAND = 4u,  // 对方梯形高地
    BIT_ENEMY_FLYING_SLOPE_PRE     = 7u,  // 对方飞坡前
    BIT_ENEMY_FLYING_SLOPE_POST    = 8u,  // 对方飞坡后
    BIT_ENEMY_CENTRAL_LOW          = 11u, // 对方中央高低(低)
    BIT_ENEMY_CENTRAL_HIGH         = 12u, // 对方中央高低(高)
    BIT_ENEMY_HIGHWAY_LOW          = 15u, // 对方公路高低(低)
    BIT_ENEMY_HIGHWAY_HIGH         = 16u, // 对方公路高低(高)
    BIT_ENEMY_ASSEMBLY             = 22u, // 对方装配点
    BIT_CENTRAL                    = 23u, // 中心增益点 (RMUL公共)
    BIT_ENEMY_FORT                 = 24u, // 对方堡垒
    BIT_ENEMY_OUTPOST              = 25u, // 对方前哨站
    BIT_ENEMY_HIGHWAY_TUNNEL_L     = 30u, // 对方公路隧道(低)
    BIT_ENEMY_HIGHWAY_TUNNEL_H     = 31u, // 对方公路隧道(高)
    BIT_ENEMY_TRAPEZOIDAL_TUNNEL_L = 32u, // 对方梯形隧道(低)
    BIT_ENEMY_TRAPEZOIDAL_TUNNEL_H = 33u  // 对方梯形隧道(高)
  };

  std_msgs::Bool msg_val;

  // 1. 公共区域
  msg_val.data = (rfid_data->field_1 >> BIT_CENTRAL) & 1;
  central_buff_point_pub_.publish(msg_val);

  // 2. 区分队伍发布 (完整发布所有定义的环境状态)
  // 提取所有 “对方” (Enemy) 状态
  bool e_ring_high  = (rfid_data->field_1 >> BIT_ENEMY_RING_HIGHLAND) & 1;
  bool e_trap_high  = (rfid_data->field_1 >> BIT_ENEMY_TRAPEZOIDAL_HIGHLAND) & 1;
  bool e_fly_pre    = (rfid_data->field_1 >> BIT_ENEMY_FLYING_SLOPE_PRE) & 1;
  bool e_fly_post   = (rfid_data->field_1 >> BIT_ENEMY_FLYING_SLOPE_POST) & 1;
  bool e_cen_low    = (rfid_data->field_1 >> BIT_ENEMY_CENTRAL_LOW) & 1;
  bool e_cen_high   = (rfid_data->field_1 >> BIT_ENEMY_CENTRAL_HIGH) & 1;
  bool e_hwy_low    = (rfid_data->field_1 >> BIT_ENEMY_HIGHWAY_LOW) & 1;
  bool e_hwy_high   = (rfid_data->field_1 >> BIT_ENEMY_HIGHWAY_HIGH) & 1;
  bool e_assembly   = (rfid_data->field_1 >> BIT_ENEMY_ASSEMBLY) & 1;
  bool e_fort       = (rfid_data->field_1 >> BIT_ENEMY_FORT) & 1;
  bool e_outpost    = (rfid_data->field_1 >> BIT_ENEMY_OUTPOST) & 1;
  bool e_hwy_tun_l  = (rfid_data->field_1 >> BIT_ENEMY_HIGHWAY_TUNNEL_L) & 1;
  bool e_hwy_tun_h  = (rfid_data->field_1 >> BIT_ENEMY_HIGHWAY_TUNNEL_H) & 1;
  bool e_trap_tun_l = (rfid_data->field_2 >> (BIT_ENEMY_TRAPEZOIDAL_TUNNEL_L - 32)) & 1;
  bool e_trap_tun_h = (rfid_data->field_2 >> (BIT_ENEMY_TRAPEZOIDAL_TUNNEL_H - 32)) & 1;

  if (is_red) {
    // 红方：Ally=Red -> 接收到的“Enemy”信息是Blue的
    // 发布到 Blue 话题
    msg_val.data = e_outpost;    blue_outpost_buff_point_pub_.publish(msg_val);
    msg_val.data = e_fort;       blue_fort_buff_point_pub_.publish(msg_val);
    msg_val.data = e_ring_high;  blue_wall_pub_.publish(msg_val);
    msg_val.data = e_trap_high;  blue_trap_high_pub_.publish(msg_val);
    msg_val.data = e_fly_pre;    blue_fly_pre_pub_.publish(msg_val);
    msg_val.data = e_fly_post;   blue_fly_post_pub_.publish(msg_val);
    msg_val.data = e_cen_low;    blue_central_low_pub_.publish(msg_val);
    msg_val.data = e_cen_high;   blue_central_high_pub_.publish(msg_val);
    msg_val.data = e_hwy_low;    blue_highway_low_pub_.publish(msg_val);
    msg_val.data = e_hwy_high;   blue_highway_high_pub_.publish(msg_val);
    msg_val.data = e_assembly;   blue_assembly_pub_.publish(msg_val);
    msg_val.data = e_hwy_tun_l;  blue_highway_tunnel_low_pub_.publish(msg_val);
    msg_val.data = e_hwy_tun_h;  blue_highway_tunnel_high_pub_.publish(msg_val);
    msg_val.data = e_trap_tun_l; blue_trap_tunnel_low_pub_.publish(msg_val);
    msg_val.data = e_trap_tun_h; blue_trap_tunnel_high_pub_.publish(msg_val);
  } else {
    // 蓝方：Ally=Blue -> 接收到的“Enemy”信息是Red的
    // 发布到 Red 话题
    msg_val.data = e_outpost;    red_outpost_buff_point_pub_.publish(msg_val);
    msg_val.data = e_fort;       red_fort_buff_point_pub_.publish(msg_val);
    msg_val.data = e_ring_high;  red_wall_pub_.publish(msg_val);
    msg_val.data = e_trap_high;  red_trap_high_pub_.publish(msg_val);
    msg_val.data = e_fly_pre;    red_fly_pre_pub_.publish(msg_val);
    msg_val.data = e_fly_post;   red_fly_post_pub_.publish(msg_val);
    msg_val.data = e_cen_low;    red_central_low_pub_.publish(msg_val);
    msg_val.data = e_cen_high;   red_central_high_pub_.publish(msg_val);
    msg_val.data = e_hwy_low;    red_highway_low_pub_.publish(msg_val);
    msg_val.data = e_hwy_high;   red_highway_high_pub_.publish(msg_val);
    msg_val.data = e_assembly;   red_assembly_pub_.publish(msg_val);
    msg_val.data = e_hwy_tun_l;  red_highway_tunnel_low_pub_.publish(msg_val);
    msg_val.data = e_hwy_tun_h;  red_highway_tunnel_high_pub_.publish(msg_val);
    msg_val.data = e_trap_tun_l; red_trap_tunnel_low_pub_.publish(msg_val);
    msg_val.data = e_trap_tun_h; red_trap_tunnel_high_pub_.publish(msg_val);
  }
}


}  // namespace radio_referee_parser
