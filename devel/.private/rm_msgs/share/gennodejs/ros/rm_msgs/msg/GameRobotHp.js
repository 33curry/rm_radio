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

class GameRobotHp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ally_1_robot_HP = null;
      this.ally_2_robot_HP = null;
      this.ally_3_robot_HP = null;
      this.ally_4_robot_HP = null;
      this.ally_7_robot_HP = null;
      this.ally_outpost_HP = null;
      this.ally_base_HP = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('ally_1_robot_HP')) {
        this.ally_1_robot_HP = initObj.ally_1_robot_HP
      }
      else {
        this.ally_1_robot_HP = 0;
      }
      if (initObj.hasOwnProperty('ally_2_robot_HP')) {
        this.ally_2_robot_HP = initObj.ally_2_robot_HP
      }
      else {
        this.ally_2_robot_HP = 0;
      }
      if (initObj.hasOwnProperty('ally_3_robot_HP')) {
        this.ally_3_robot_HP = initObj.ally_3_robot_HP
      }
      else {
        this.ally_3_robot_HP = 0;
      }
      if (initObj.hasOwnProperty('ally_4_robot_HP')) {
        this.ally_4_robot_HP = initObj.ally_4_robot_HP
      }
      else {
        this.ally_4_robot_HP = 0;
      }
      if (initObj.hasOwnProperty('ally_7_robot_HP')) {
        this.ally_7_robot_HP = initObj.ally_7_robot_HP
      }
      else {
        this.ally_7_robot_HP = 0;
      }
      if (initObj.hasOwnProperty('ally_outpost_HP')) {
        this.ally_outpost_HP = initObj.ally_outpost_HP
      }
      else {
        this.ally_outpost_HP = 0;
      }
      if (initObj.hasOwnProperty('ally_base_HP')) {
        this.ally_base_HP = initObj.ally_base_HP
      }
      else {
        this.ally_base_HP = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GameRobotHp
    // Serialize message field [ally_1_robot_HP]
    bufferOffset = _serializer.uint16(obj.ally_1_robot_HP, buffer, bufferOffset);
    // Serialize message field [ally_2_robot_HP]
    bufferOffset = _serializer.uint16(obj.ally_2_robot_HP, buffer, bufferOffset);
    // Serialize message field [ally_3_robot_HP]
    bufferOffset = _serializer.uint16(obj.ally_3_robot_HP, buffer, bufferOffset);
    // Serialize message field [ally_4_robot_HP]
    bufferOffset = _serializer.uint16(obj.ally_4_robot_HP, buffer, bufferOffset);
    // Serialize message field [ally_7_robot_HP]
    bufferOffset = _serializer.uint16(obj.ally_7_robot_HP, buffer, bufferOffset);
    // Serialize message field [ally_outpost_HP]
    bufferOffset = _serializer.uint16(obj.ally_outpost_HP, buffer, bufferOffset);
    // Serialize message field [ally_base_HP]
    bufferOffset = _serializer.uint16(obj.ally_base_HP, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameRobotHp
    let len;
    let data = new GameRobotHp(null);
    // Deserialize message field [ally_1_robot_HP]
    data.ally_1_robot_HP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ally_2_robot_HP]
    data.ally_2_robot_HP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ally_3_robot_HP]
    data.ally_3_robot_HP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ally_4_robot_HP]
    data.ally_4_robot_HP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ally_7_robot_HP]
    data.ally_7_robot_HP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ally_outpost_HP]
    data.ally_outpost_HP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ally_base_HP]
    data.ally_base_HP = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/GameRobotHp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b8c1902e96ad7c67b46c3d5637af066';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 ally_1_robot_HP
    uint16 ally_2_robot_HP
    uint16 ally_3_robot_HP
    uint16 ally_4_robot_HP
    uint16 ally_7_robot_HP
    uint16 ally_outpost_HP
    uint16 ally_base_HP
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameRobotHp(null);
    if (msg.ally_1_robot_HP !== undefined) {
      resolved.ally_1_robot_HP = msg.ally_1_robot_HP;
    }
    else {
      resolved.ally_1_robot_HP = 0
    }

    if (msg.ally_2_robot_HP !== undefined) {
      resolved.ally_2_robot_HP = msg.ally_2_robot_HP;
    }
    else {
      resolved.ally_2_robot_HP = 0
    }

    if (msg.ally_3_robot_HP !== undefined) {
      resolved.ally_3_robot_HP = msg.ally_3_robot_HP;
    }
    else {
      resolved.ally_3_robot_HP = 0
    }

    if (msg.ally_4_robot_HP !== undefined) {
      resolved.ally_4_robot_HP = msg.ally_4_robot_HP;
    }
    else {
      resolved.ally_4_robot_HP = 0
    }

    if (msg.ally_7_robot_HP !== undefined) {
      resolved.ally_7_robot_HP = msg.ally_7_robot_HP;
    }
    else {
      resolved.ally_7_robot_HP = 0
    }

    if (msg.ally_outpost_HP !== undefined) {
      resolved.ally_outpost_HP = msg.ally_outpost_HP;
    }
    else {
      resolved.ally_outpost_HP = 0
    }

    if (msg.ally_base_HP !== undefined) {
      resolved.ally_base_HP = msg.ally_base_HP;
    }
    else {
      resolved.ally_base_HP = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = GameRobotHp;
