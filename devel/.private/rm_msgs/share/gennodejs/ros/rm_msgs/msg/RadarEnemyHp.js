// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RadarEnemyHp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hero_hp = null;
      this.engineer_hp = null;
      this.standard_3_hp = null;
      this.standard_4_hp = null;
      this.sentry_hp = null;
    }
    else {
      if (initObj.hasOwnProperty('hero_hp')) {
        this.hero_hp = initObj.hero_hp
      }
      else {
        this.hero_hp = 0;
      }
      if (initObj.hasOwnProperty('engineer_hp')) {
        this.engineer_hp = initObj.engineer_hp
      }
      else {
        this.engineer_hp = 0;
      }
      if (initObj.hasOwnProperty('standard_3_hp')) {
        this.standard_3_hp = initObj.standard_3_hp
      }
      else {
        this.standard_3_hp = 0;
      }
      if (initObj.hasOwnProperty('standard_4_hp')) {
        this.standard_4_hp = initObj.standard_4_hp
      }
      else {
        this.standard_4_hp = 0;
      }
      if (initObj.hasOwnProperty('sentry_hp')) {
        this.sentry_hp = initObj.sentry_hp
      }
      else {
        this.sentry_hp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarEnemyHp
    // Serialize message field [hero_hp]
    bufferOffset = _serializer.uint16(obj.hero_hp, buffer, bufferOffset);
    // Serialize message field [engineer_hp]
    bufferOffset = _serializer.uint16(obj.engineer_hp, buffer, bufferOffset);
    // Serialize message field [standard_3_hp]
    bufferOffset = _serializer.uint16(obj.standard_3_hp, buffer, bufferOffset);
    // Serialize message field [standard_4_hp]
    bufferOffset = _serializer.uint16(obj.standard_4_hp, buffer, bufferOffset);
    // Serialize message field [sentry_hp]
    bufferOffset = _serializer.uint16(obj.sentry_hp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarEnemyHp
    let len;
    let data = new RadarEnemyHp(null);
    // Deserialize message field [hero_hp]
    data.hero_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [engineer_hp]
    data.engineer_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [standard_3_hp]
    data.standard_3_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [standard_4_hp]
    data.standard_4_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sentry_hp]
    data.sentry_hp = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarEnemyHp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '237ae6302bfb5769809771e806c70a45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ID: 0x0A02 对方机器人血量
    uint16 hero_hp
    uint16 engineer_hp
    uint16 standard_3_hp
    uint16 standard_4_hp
    uint16 sentry_hp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarEnemyHp(null);
    if (msg.hero_hp !== undefined) {
      resolved.hero_hp = msg.hero_hp;
    }
    else {
      resolved.hero_hp = 0
    }

    if (msg.engineer_hp !== undefined) {
      resolved.engineer_hp = msg.engineer_hp;
    }
    else {
      resolved.engineer_hp = 0
    }

    if (msg.standard_3_hp !== undefined) {
      resolved.standard_3_hp = msg.standard_3_hp;
    }
    else {
      resolved.standard_3_hp = 0
    }

    if (msg.standard_4_hp !== undefined) {
      resolved.standard_4_hp = msg.standard_4_hp;
    }
    else {
      resolved.standard_4_hp = 0
    }

    if (msg.sentry_hp !== undefined) {
      resolved.sentry_hp = msg.sentry_hp;
    }
    else {
      resolved.sentry_hp = 0
    }

    return resolved;
    }
};

module.exports = RadarEnemyHp;
