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

class RadarDoubleKey {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarDoubleKey
    // Check that the constant length array field [key] has the right length
    if (obj.key.length !== 6) {
      throw new Error('Unable to serialize array field key - length must be 6')
    }
    // Serialize message field [key]
    bufferOffset = _arraySerializer.uint8(obj.key, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarDoubleKey
    let len;
    let data = new RadarDoubleKey(null);
    // Deserialize message field [key]
    data.key = _arrayDeserializer.uint8(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarDoubleKey';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e7c4656cadf17b1c0d247eed3cdf8e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[6] key
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarDoubleKey(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = RadarDoubleKey;
