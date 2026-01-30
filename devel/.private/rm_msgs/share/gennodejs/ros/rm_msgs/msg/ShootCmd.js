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

class ShootCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.wheel_speed = null;
      this.hz = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('wheel_speed')) {
        this.wheel_speed = initObj.wheel_speed
      }
      else {
        this.wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('hz')) {
        this.hz = initObj.hz
      }
      else {
        this.hz = 0.0;
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
    // Serializes a message object of type ShootCmd
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [wheel_speed]
    bufferOffset = _serializer.float64(obj.wheel_speed, buffer, bufferOffset);
    // Serialize message field [hz]
    bufferOffset = _serializer.float64(obj.hz, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShootCmd
    let len;
    let data = new ShootCmd(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_speed]
    data.wheel_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hz]
    data.hz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ShootCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8993cce6e078c47eb12520efee766b30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STOP = 0
    uint8 READY = 1
    uint8 PUSH = 2
    
    uint8 SPEED_ZERO_FOR_TEST = 0
    uint8 SPEED_10M_PER_SECOND = 1
    uint8 SPEED_15M_PER_SECOND = 2
    uint8 SPEED_16M_PER_SECOND = 3
    uint8 SPEED_18M_PER_SECOND = 4
    uint8 SPEED_30M_PER_SECOND = 5
    
    uint8 mode
    float64 wheel_speed
    float64 hz
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShootCmd(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.wheel_speed !== undefined) {
      resolved.wheel_speed = msg.wheel_speed;
    }
    else {
      resolved.wheel_speed = 0.0
    }

    if (msg.hz !== undefined) {
      resolved.hz = msg.hz;
    }
    else {
      resolved.hz = 0.0
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

// Constants for message
ShootCmd.Constants = {
  STOP: 0,
  READY: 1,
  PUSH: 2,
  SPEED_ZERO_FOR_TEST: 0,
  SPEED_10M_PER_SECOND: 1,
  SPEED_15M_PER_SECOND: 2,
  SPEED_16M_PER_SECOND: 3,
  SPEED_18M_PER_SECOND: 4,
  SPEED_30M_PER_SECOND: 5,
}

module.exports = ShootCmd;
