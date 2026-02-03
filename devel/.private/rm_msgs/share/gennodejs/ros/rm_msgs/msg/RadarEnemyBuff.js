// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RadarRobotBuff = require('./RadarRobotBuff.js');

//-----------------------------------------------------------

class RadarEnemyBuff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hero = null;
      this.engineer = null;
      this.standard_3 = null;
      this.standard_4 = null;
      this.sentry = null;
      this.sentry_status = null;
    }
    else {
      if (initObj.hasOwnProperty('hero')) {
        this.hero = initObj.hero
      }
      else {
        this.hero = new RadarRobotBuff();
      }
      if (initObj.hasOwnProperty('engineer')) {
        this.engineer = initObj.engineer
      }
      else {
        this.engineer = new RadarRobotBuff();
      }
      if (initObj.hasOwnProperty('standard_3')) {
        this.standard_3 = initObj.standard_3
      }
      else {
        this.standard_3 = new RadarRobotBuff();
      }
      if (initObj.hasOwnProperty('standard_4')) {
        this.standard_4 = initObj.standard_4
      }
      else {
        this.standard_4 = new RadarRobotBuff();
      }
      if (initObj.hasOwnProperty('sentry')) {
        this.sentry = initObj.sentry
      }
      else {
        this.sentry = new RadarRobotBuff();
      }
      if (initObj.hasOwnProperty('sentry_status')) {
        this.sentry_status = initObj.sentry_status
      }
      else {
        this.sentry_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarEnemyBuff
    // Serialize message field [hero]
    bufferOffset = RadarRobotBuff.serialize(obj.hero, buffer, bufferOffset);
    // Serialize message field [engineer]
    bufferOffset = RadarRobotBuff.serialize(obj.engineer, buffer, bufferOffset);
    // Serialize message field [standard_3]
    bufferOffset = RadarRobotBuff.serialize(obj.standard_3, buffer, bufferOffset);
    // Serialize message field [standard_4]
    bufferOffset = RadarRobotBuff.serialize(obj.standard_4, buffer, bufferOffset);
    // Serialize message field [sentry]
    bufferOffset = RadarRobotBuff.serialize(obj.sentry, buffer, bufferOffset);
    // Serialize message field [sentry_status]
    bufferOffset = _serializer.uint8(obj.sentry_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarEnemyBuff
    let len;
    let data = new RadarEnemyBuff(null);
    // Deserialize message field [hero]
    data.hero = RadarRobotBuff.deserialize(buffer, bufferOffset);
    // Deserialize message field [engineer]
    data.engineer = RadarRobotBuff.deserialize(buffer, bufferOffset);
    // Deserialize message field [standard_3]
    data.standard_3 = RadarRobotBuff.deserialize(buffer, bufferOffset);
    // Deserialize message field [standard_4]
    data.standard_4 = RadarRobotBuff.deserialize(buffer, bufferOffset);
    // Deserialize message field [sentry]
    data.sentry = RadarRobotBuff.deserialize(buffer, bufferOffset);
    // Deserialize message field [sentry_status]
    data.sentry_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarEnemyBuff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9496c17234cb8fd19e6a99a196c4479b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ID: 0x0A05 对方机器人增益
    # 按照协议顺序：英雄、工程、步兵3、步兵4、哨兵
    RadarRobotBuff hero
    RadarRobotBuff engineer
    RadarRobotBuff standard_3
    RadarRobotBuff standard_4
    RadarRobotBuff sentry
    # 哨兵额外状态字节
    uint8 sentry_status
    
    ================================================================================
    MSG: rm_msgs/RadarRobotBuff
    # 单个机器人的增益信息
    uint8 recovery_percent
    uint16 cooling_buff
    uint8 def_buff
    uint8 neg_def_buff
    uint16 attack_buff
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarEnemyBuff(null);
    if (msg.hero !== undefined) {
      resolved.hero = RadarRobotBuff.Resolve(msg.hero)
    }
    else {
      resolved.hero = new RadarRobotBuff()
    }

    if (msg.engineer !== undefined) {
      resolved.engineer = RadarRobotBuff.Resolve(msg.engineer)
    }
    else {
      resolved.engineer = new RadarRobotBuff()
    }

    if (msg.standard_3 !== undefined) {
      resolved.standard_3 = RadarRobotBuff.Resolve(msg.standard_3)
    }
    else {
      resolved.standard_3 = new RadarRobotBuff()
    }

    if (msg.standard_4 !== undefined) {
      resolved.standard_4 = RadarRobotBuff.Resolve(msg.standard_4)
    }
    else {
      resolved.standard_4 = new RadarRobotBuff()
    }

    if (msg.sentry !== undefined) {
      resolved.sentry = RadarRobotBuff.Resolve(msg.sentry)
    }
    else {
      resolved.sentry = new RadarRobotBuff()
    }

    if (msg.sentry_status !== undefined) {
      resolved.sentry_status = msg.sentry_status;
    }
    else {
      resolved.sentry_status = 0
    }

    return resolved;
    }
};

module.exports = RadarEnemyBuff;
