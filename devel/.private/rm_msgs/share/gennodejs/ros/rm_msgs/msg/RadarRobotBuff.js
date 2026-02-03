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

class RadarRobotBuff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recovery_percent = null;
      this.cooling_buff = null;
      this.def_buff = null;
      this.neg_def_buff = null;
      this.attack_buff = null;
    }
    else {
      if (initObj.hasOwnProperty('recovery_percent')) {
        this.recovery_percent = initObj.recovery_percent
      }
      else {
        this.recovery_percent = 0;
      }
      if (initObj.hasOwnProperty('cooling_buff')) {
        this.cooling_buff = initObj.cooling_buff
      }
      else {
        this.cooling_buff = 0;
      }
      if (initObj.hasOwnProperty('def_buff')) {
        this.def_buff = initObj.def_buff
      }
      else {
        this.def_buff = 0;
      }
      if (initObj.hasOwnProperty('neg_def_buff')) {
        this.neg_def_buff = initObj.neg_def_buff
      }
      else {
        this.neg_def_buff = 0;
      }
      if (initObj.hasOwnProperty('attack_buff')) {
        this.attack_buff = initObj.attack_buff
      }
      else {
        this.attack_buff = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarRobotBuff
    // Serialize message field [recovery_percent]
    bufferOffset = _serializer.uint8(obj.recovery_percent, buffer, bufferOffset);
    // Serialize message field [cooling_buff]
    bufferOffset = _serializer.uint16(obj.cooling_buff, buffer, bufferOffset);
    // Serialize message field [def_buff]
    bufferOffset = _serializer.uint8(obj.def_buff, buffer, bufferOffset);
    // Serialize message field [neg_def_buff]
    bufferOffset = _serializer.uint8(obj.neg_def_buff, buffer, bufferOffset);
    // Serialize message field [attack_buff]
    bufferOffset = _serializer.uint16(obj.attack_buff, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarRobotBuff
    let len;
    let data = new RadarRobotBuff(null);
    // Deserialize message field [recovery_percent]
    data.recovery_percent = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cooling_buff]
    data.cooling_buff = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [def_buff]
    data.def_buff = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [neg_def_buff]
    data.neg_def_buff = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [attack_buff]
    data.attack_buff = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarRobotBuff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6787d7b9505d543c4cee8752169fddfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RadarRobotBuff(null);
    if (msg.recovery_percent !== undefined) {
      resolved.recovery_percent = msg.recovery_percent;
    }
    else {
      resolved.recovery_percent = 0
    }

    if (msg.cooling_buff !== undefined) {
      resolved.cooling_buff = msg.cooling_buff;
    }
    else {
      resolved.cooling_buff = 0
    }

    if (msg.def_buff !== undefined) {
      resolved.def_buff = msg.def_buff;
    }
    else {
      resolved.def_buff = 0
    }

    if (msg.neg_def_buff !== undefined) {
      resolved.neg_def_buff = msg.neg_def_buff;
    }
    else {
      resolved.neg_def_buff = 0
    }

    if (msg.attack_buff !== undefined) {
      resolved.attack_buff = msg.attack_buff;
    }
    else {
      resolved.attack_buff = 0
    }

    return resolved;
    }
};

module.exports = RadarRobotBuff;
