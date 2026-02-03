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

class RadarCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radar_cmd = null;
      this.password_cmd = null;
      this.password_1 = null;
      this.password_2 = null;
      this.password_3 = null;
      this.password_4 = null;
      this.password_5 = null;
      this.password_6 = null;
    }
    else {
      if (initObj.hasOwnProperty('radar_cmd')) {
        this.radar_cmd = initObj.radar_cmd
      }
      else {
        this.radar_cmd = 0;
      }
      if (initObj.hasOwnProperty('password_cmd')) {
        this.password_cmd = initObj.password_cmd
      }
      else {
        this.password_cmd = 0;
      }
      if (initObj.hasOwnProperty('password_1')) {
        this.password_1 = initObj.password_1
      }
      else {
        this.password_1 = 0;
      }
      if (initObj.hasOwnProperty('password_2')) {
        this.password_2 = initObj.password_2
      }
      else {
        this.password_2 = 0;
      }
      if (initObj.hasOwnProperty('password_3')) {
        this.password_3 = initObj.password_3
      }
      else {
        this.password_3 = 0;
      }
      if (initObj.hasOwnProperty('password_4')) {
        this.password_4 = initObj.password_4
      }
      else {
        this.password_4 = 0;
      }
      if (initObj.hasOwnProperty('password_5')) {
        this.password_5 = initObj.password_5
      }
      else {
        this.password_5 = 0;
      }
      if (initObj.hasOwnProperty('password_6')) {
        this.password_6 = initObj.password_6
      }
      else {
        this.password_6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarCmd
    // Serialize message field [radar_cmd]
    bufferOffset = _serializer.uint8(obj.radar_cmd, buffer, bufferOffset);
    // Serialize message field [password_cmd]
    bufferOffset = _serializer.uint8(obj.password_cmd, buffer, bufferOffset);
    // Serialize message field [password_1]
    bufferOffset = _serializer.uint8(obj.password_1, buffer, bufferOffset);
    // Serialize message field [password_2]
    bufferOffset = _serializer.uint8(obj.password_2, buffer, bufferOffset);
    // Serialize message field [password_3]
    bufferOffset = _serializer.uint8(obj.password_3, buffer, bufferOffset);
    // Serialize message field [password_4]
    bufferOffset = _serializer.uint8(obj.password_4, buffer, bufferOffset);
    // Serialize message field [password_5]
    bufferOffset = _serializer.uint8(obj.password_5, buffer, bufferOffset);
    // Serialize message field [password_6]
    bufferOffset = _serializer.uint8(obj.password_6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarCmd
    let len;
    let data = new RadarCmd(null);
    // Deserialize message field [radar_cmd]
    data.radar_cmd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [password_cmd]
    data.password_cmd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [password_1]
    data.password_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [password_2]
    data.password_2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [password_3]
    data.password_3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [password_4]
    data.password_4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [password_5]
    data.password_5 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [password_6]
    data.password_6 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b64c898bf6d85c43411778433c0cde0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 radar_cmd
    uint8 password_cmd
    uint8 password_1
    uint8 password_2
    uint8 password_3
    uint8 password_4
    uint8 password_5
    uint8 password_6
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarCmd(null);
    if (msg.radar_cmd !== undefined) {
      resolved.radar_cmd = msg.radar_cmd;
    }
    else {
      resolved.radar_cmd = 0
    }

    if (msg.password_cmd !== undefined) {
      resolved.password_cmd = msg.password_cmd;
    }
    else {
      resolved.password_cmd = 0
    }

    if (msg.password_1 !== undefined) {
      resolved.password_1 = msg.password_1;
    }
    else {
      resolved.password_1 = 0
    }

    if (msg.password_2 !== undefined) {
      resolved.password_2 = msg.password_2;
    }
    else {
      resolved.password_2 = 0
    }

    if (msg.password_3 !== undefined) {
      resolved.password_3 = msg.password_3;
    }
    else {
      resolved.password_3 = 0
    }

    if (msg.password_4 !== undefined) {
      resolved.password_4 = msg.password_4;
    }
    else {
      resolved.password_4 = 0
    }

    if (msg.password_5 !== undefined) {
      resolved.password_5 = msg.password_5;
    }
    else {
      resolved.password_5 = 0
    }

    if (msg.password_6 !== undefined) {
      resolved.password_6 = msg.password_6;
    }
    else {
      resolved.password_6 = 0
    }

    return resolved;
    }
};

module.exports = RadarCmd;
