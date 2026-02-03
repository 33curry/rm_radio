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

  // Load robot_id from parameter server, default to 1
  nh_.param<int>("robot_id", (int&)robot_id_, 1);

  // Subscribe to radio referee data
  radio_referee_sub_ = nh_.subscribe("/radio/referee_data", 10,
      &RadioRefereeParser::radioRefereeDataCallback, this);

  // Initialize publishers for Radio/Unlimited Link Data
  // 0x0A01
  enemy_pos_pub_ = nh_.advertise<rm_msgs::RadarEnemyPosition>("/referee_parser/radar/enemy_position", 1);
  // 0x0A02
  enemy_hp_pub_ = nh_.advertise<rm_msgs::RadarEnemyHp>("/referee_parser/radar/enemy_hp", 1);
  // 0x0A03
  enemy_bullet_allowance_pub_ = nh_.advertise<rm_msgs::RadarEnemyBulletAllowance>("/referee_parser/radar/enemy_bullet_allowance", 1);
  // 0x0A04
  enemy_status_pub_ = nh_.advertise<rm_msgs::RadarEnemyStatus>("/referee_parser/radar/enemy_status", 1);
  
  // 0x0A05 (Assuming float array for simplicity of viewing all buffs)
  enemy_buff_pub_ = nh_.advertise<rm_msgs::RadarEnemyBuff>("/referee_parser/radar/enemy_buff", 1);

  ROS_INFO("Radio Referee Parser initialized - RADAR MODE");
}

void RadioRefereeParser::radioRefereeDataCallback(const rm_msgs::RadarRadioData::ConstPtr& msg)
{
  // 协议化缓冲区拼包、校验、分发
  static std::vector<uint8_t> buffer;
  // 假设msg->data为原始字节流
  const uint8_t* raw = msg->data.data();
  size_t read_len = msg->data.size();
  buffer.insert(buffer.end(), raw, raw + read_len);

  constexpr uint8_t SOF = 0xA5;
  constexpr size_t FRAME_HEADER_LEN = 5;
  constexpr size_t FRAME_TAIL_LEN = 2;

  while (true) {
    auto sof = std::find(buffer.begin(), buffer.end(), SOF);
    if (sof == buffer.end()) {
      buffer.clear();
      break;
    }
    size_t sof_index = std::distance(buffer.begin(), sof);
    if (buffer.size() < sof_index + FRAME_HEADER_LEN) break;

    uint16_t data_length = buffer[sof_index + 1] | (buffer[sof_index + 2] << 8);
    size_t total_len = FRAME_HEADER_LEN + 2 + data_length + FRAME_TAIL_LEN;
    if (buffer.size() < sof_index + total_len) break;

    // CRC8
    if (Get_CRC8_Check_Sum(&buffer[sof_index], 4) != buffer[sof_index + 4]) {
      ROS_ERROR("CRC8 Failed! Calculated: %02x, Expected: %02x", 
          Get_CRC8_Check_Sum(&buffer[sof_index], 4), buffer[sof_index + 4]);
      buffer.erase(buffer.begin(), buffer.begin() + sof_index + 1);
      continue;
    }
    // CRC16
    if (!Verify_CRC16_Check_Sum(&buffer[sof_index], total_len)) {
      ROS_ERROR("CRC16 Failed!");
      buffer.erase(buffer.begin(), buffer.begin() + sof_index + 1);
      continue;
    }

    uint16_t cmd_id = buffer[sof_index + FRAME_HEADER_LEN] | (buffer[sof_index + FRAME_HEADER_LEN + 1] << 8);
    ROS_INFO("Packet Valid! CmdID: 0x%04x", cmd_id);
    const uint8_t* payload = &buffer[sof_index + FRAME_HEADER_LEN + 2];
    uint16_t payload_len = data_length;

    // 只处理雷达/无限链路数据 (0x0A01 - 0x0A05)
    switch ((MsgType)cmd_id) {
      case MsgType::ENEMY_POSITION:
        parseEnemyPosition(payload, payload_len);
        break;
      case MsgType::ENEMY_HP:
        parseEnemyHp(payload, payload_len);
        break;
      case MsgType::ENEMY_BULLET_ALLOWANCE:
        parseEnemyBulletAllowance(payload, payload_len);
        break;
      case MsgType::ENEMY_STATUS:
        parseEnemyStatus(payload, payload_len);
        break;
      case MsgType::ENEMY_BUFF:
        parseEnemyBuff(payload, payload_len);
        break;
      default:
        break;
    }

    buffer.erase(buffer.begin(), buffer.begin() + sof_index + total_len);
  }
}

// -------------------------------------------------------------
// 数据解析实现
// -------------------------------------------------------------

void RadioRefereeParser::parseEnemyPosition(const uint8_t* data, uint16_t length)
{
  // ID: 0x0A01 对方机器人位置 (单位: cm)
  struct EnemyPositionRaw {
    uint16_t hero_x;      uint16_t hero_y;
    uint16_t engineer_x;  uint16_t engineer_y;
    uint16_t standard_3_x; uint16_t standard_3_y;
    uint16_t standard_4_x; uint16_t standard_4_y;
    uint16_t air_x;       uint16_t air_y;
    uint16_t sentry_x;    uint16_t sentry_y;
  } __packed;

  if (length < sizeof(EnemyPositionRaw)) return;
  const EnemyPositionRaw* pos = reinterpret_cast<const EnemyPositionRaw*>(data);

  rm_msgs::RadarEnemyPosition msg;
  msg.hero_x       = pos->hero_x / 100.0f;
  msg.hero_y       = pos->hero_y / 100.0f;
  msg.engineer_x   = pos->engineer_x / 100.0f;
  msg.engineer_y   = pos->engineer_y / 100.0f;
  msg.standard_3_x = pos->standard_3_x / 100.0f;
  msg.standard_3_y = pos->standard_3_y / 100.0f;
  msg.standard_4_x = pos->standard_4_x / 100.0f;
  msg.standard_4_y = pos->standard_4_y / 100.0f;
  msg.air_x        = pos->air_x / 100.0f;
  msg.air_y        = pos->air_y / 100.0f;
  msg.sentry_x     = pos->sentry_x / 100.0f;
  msg.sentry_y     = pos->sentry_y / 100.0f;

  enemy_pos_pub_.publish(msg);
}

void RadioRefereeParser::parseEnemyHp(const uint8_t* data, uint16_t length)
{
  // ID: 0x0A02 对方机器人血量
  struct EnemyHpRaw {
    uint16_t hero_hp;
    uint16_t engineer_hp;
    uint16_t standard_3_hp;
    uint16_t standard_4_hp;
    uint16_t reserved;
    uint16_t sentry_hp;
  } __packed;

  if (length < sizeof(EnemyHpRaw)) return;
  const EnemyHpRaw* hp = reinterpret_cast<const EnemyHpRaw*>(data);

  rm_msgs::RadarEnemyHp msg;
  msg.hero_hp = hp->hero_hp;
  msg.engineer_hp = hp->engineer_hp;
  msg.standard_3_hp = hp->standard_3_hp;
  msg.standard_4_hp = hp->standard_4_hp;
  msg.sentry_hp = hp->sentry_hp;
  
  enemy_hp_pub_.publish(msg);
}

void RadioRefereeParser::parseEnemyBulletAllowance(const uint8_t* data, uint16_t length)
{
  // ID: 0x0A03 对方允许发弹量
  struct EnemyBulletRaw {
    uint16_t hero_bullet;
    uint16_t standard_3_bullet;
    uint16_t standard_4_bullet;
    uint16_t air_bullet;
    uint16_t sentry_bullet;
  } __packed;

  if (length < sizeof(EnemyBulletRaw)) return;
  const EnemyBulletRaw* bullet = reinterpret_cast<const EnemyBulletRaw*>(data);

  rm_msgs::RadarEnemyBulletAllowance msg;
  msg.hero_bullet       = bullet->hero_bullet;
  msg.standard_3_bullet = bullet->standard_3_bullet;
  msg.standard_4_bullet = bullet->standard_4_bullet;
  msg.air_bullet        = bullet->air_bullet;
  msg.sentry_bullet     = bullet->sentry_bullet;

  enemy_bullet_allowance_pub_.publish(msg);
}

void RadioRefereeParser::parseEnemyStatus(const uint8_t* data, uint16_t length)
{
  // ID: 0x0A04 对方金币与领地状态
  struct EnemyStatusRaw {
    uint16_t remainder_coin;
    uint16_t total_coin;
    uint32_t status_bitmask;
  } __packed;

  if (length < sizeof(EnemyStatusRaw)) return;
  const EnemyStatusRaw* s = reinterpret_cast<const EnemyStatusRaw*>(data);

  rm_msgs::RadarEnemyStatus msg;
  msg.remainder_coin = s->remainder_coin;
  msg.total_coin     = s->total_coin;
  msg.status_bitmask = s->status_bitmask;

  uint32_t bits = s->status_bitmask;

  // Bit 0: Assembly
  msg.enemy_assembly = (bits & 0x01);
  
  // Bit 1-2: Central/Ring Highland (0=None, 1=Enemy, 2=Ally)
  uint8_t ring = (bits >> 1) & 0x03;
  msg.enemy_ring_highland = (ring == 1); 

  // Bit 3: Trapezoidal
  msg.enemy_trapezoidal_highland = ((bits >> 3) & 0x01);

  // Bit 4-5: Fort (0=Un, 1=Enemy, 2=Ally, 3=Both)
  uint8_t fort = (bits >> 4) & 0x03;
  msg.enemy_fort = (fort == 1 || fort == 3);

  // Bit 6-7: Outpost (0=Un, 1=Enemy, 2=Ally)
  uint8_t outpost = (bits >> 6) & 0x03;
  msg.enemy_outpost = (outpost == 1);

  // Bit 9: Flying Slope Pre
  msg.enemy_flying_slope_pre = ((bits >> 9)  & 0x01);

  // Bit 10: Flying Slope Post
  msg.enemy_flying_slope_post = ((bits >> 10) & 0x01);

  // Bit 11: Highway Tunnel L
  msg.enemy_highway_tunnel_l = ((bits >> 11) & 0x01);
  
  // Bit 12: Highway Tunnel H
  msg.enemy_highway_tunnel_h = ((bits >> 12) & 0x01);

  // Bit 13: Highland (High)
  msg.enemy_central_high = ((bits >> 13) & 0x01);

  // Bit 14: Highland (Fly)
  msg.enemy_central_low = ((bits >> 14) & 0x01); 

  // Bit 15: Highland (Road)
  msg.enemy_highway_high = ((bits >> 15) & 0x01);

  enemy_status_pub_.publish(msg);
}

void RadioRefereeParser::parseEnemyBuff(const uint8_t* data, uint16_t length)
{
  // ID: 0x0A05 对方机器人增益
  struct RobotBuffRaw {
    uint8_t recovery_percent; 
    uint16_t cooling_buff;
    uint8_t def_buff;
    uint8_t neg_def_buff;
    uint16_t attack_buff;
  } __packed;

  // 5 Robots + 1 status byte for sentry
  struct EnemyBuffRaw {
    RobotBuffRaw hero;       // 0-6
    RobotBuffRaw engineer;   // 7-13
    RobotBuffRaw standard_3; // 14-20
    RobotBuffRaw standard_4; // 21-27
    RobotBuffRaw sentry;     // 28-34
    uint8_t sentry_status;   // 35
  } __packed;

  if (length < sizeof(EnemyBuffRaw)) return;
  const EnemyBuffRaw* b = reinterpret_cast<const EnemyBuffRaw*>(data);

  rm_msgs::RadarEnemyBuff msg;

  auto convert = [](const RobotBuffRaw& raw, rm_msgs::RadarRobotBuff& out) {
      out.recovery_percent = raw.recovery_percent;
      out.cooling_buff = raw.cooling_buff;
      out.def_buff = raw.def_buff;
      out.neg_def_buff = raw.neg_def_buff;
      out.attack_buff = raw.attack_buff;
  };

  convert(b->hero, msg.hero);
  convert(b->engineer, msg.engineer);
  convert(b->standard_3, msg.standard_3);
  convert(b->standard_4, msg.standard_4);
  convert(b->sentry, msg.sentry);
  msg.sentry_status = b->sentry_status;
  
  enemy_buff_pub_.publish(msg);
}

}  // namespace radio_referee_parser
