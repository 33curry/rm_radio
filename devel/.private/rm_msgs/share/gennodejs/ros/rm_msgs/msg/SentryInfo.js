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

class SentryInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sentry_info = null;
      this.sentry_mode = null;
      this.power_trigger_state = null;
    }
    else {
      if (initObj.hasOwnProperty('sentry_info')) {
        this.sentry_info = initObj.sentry_info
      }
      else {
        this.sentry_info = 0;
      }
      if (initObj.hasOwnProperty('sentry_mode')) {
        this.sentry_mode = initObj.sentry_mode
      }
      else {
        this.sentry_mode = 0;
      }
      if (initObj.hasOwnProperty('power_trigger_state')) {
        this.power_trigger_state = initObj.power_trigger_state
      }
      else {
        this.power_trigger_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SentryInfo
    // Serialize message field [sentry_info]
    bufferOffset = _serializer.uint32(obj.sentry_info, buffer, bufferOffset);
    // Serialize message field [sentry_mode]
    bufferOffset = _serializer.uint8(obj.sentry_mode, buffer, bufferOffset);
    // Serialize message field [power_trigger_state]
    bufferOffset = _serializer.bool(obj.power_trigger_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SentryInfo
    let len;
    let data = new SentryInfo(null);
    // Deserialize message field [sentry_info]
    data.sentry_info = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sentry_mode]
    data.sentry_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_trigger_state]
    data.power_trigger_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/SentryInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a02e3f6914e023272819ae56a1fdd13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 sentry_info
    uint8 sentry_mode
    bool power_trigger_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SentryInfo(null);
    if (msg.sentry_info !== undefined) {
      resolved.sentry_info = msg.sentry_info;
    }
    else {
      resolved.sentry_info = 0
    }

    if (msg.sentry_mode !== undefined) {
      resolved.sentry_mode = msg.sentry_mode;
    }
    else {
      resolved.sentry_mode = 0
    }

    if (msg.power_trigger_state !== undefined) {
      resolved.power_trigger_state = msg.power_trigger_state;
    }
    else {
      resolved.power_trigger_state = false
    }

    return resolved;
    }
};

module.exports = SentryInfo;
