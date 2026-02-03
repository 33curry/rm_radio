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

class RadarEnemyPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hero_x = null;
      this.hero_y = null;
      this.engineer_x = null;
      this.engineer_y = null;
      this.standard_3_x = null;
      this.standard_3_y = null;
      this.standard_4_x = null;
      this.standard_4_y = null;
      this.air_x = null;
      this.air_y = null;
      this.sentry_x = null;
      this.sentry_y = null;
    }
    else {
      if (initObj.hasOwnProperty('hero_x')) {
        this.hero_x = initObj.hero_x
      }
      else {
        this.hero_x = 0.0;
      }
      if (initObj.hasOwnProperty('hero_y')) {
        this.hero_y = initObj.hero_y
      }
      else {
        this.hero_y = 0.0;
      }
      if (initObj.hasOwnProperty('engineer_x')) {
        this.engineer_x = initObj.engineer_x
      }
      else {
        this.engineer_x = 0.0;
      }
      if (initObj.hasOwnProperty('engineer_y')) {
        this.engineer_y = initObj.engineer_y
      }
      else {
        this.engineer_y = 0.0;
      }
      if (initObj.hasOwnProperty('standard_3_x')) {
        this.standard_3_x = initObj.standard_3_x
      }
      else {
        this.standard_3_x = 0.0;
      }
      if (initObj.hasOwnProperty('standard_3_y')) {
        this.standard_3_y = initObj.standard_3_y
      }
      else {
        this.standard_3_y = 0.0;
      }
      if (initObj.hasOwnProperty('standard_4_x')) {
        this.standard_4_x = initObj.standard_4_x
      }
      else {
        this.standard_4_x = 0.0;
      }
      if (initObj.hasOwnProperty('standard_4_y')) {
        this.standard_4_y = initObj.standard_4_y
      }
      else {
        this.standard_4_y = 0.0;
      }
      if (initObj.hasOwnProperty('air_x')) {
        this.air_x = initObj.air_x
      }
      else {
        this.air_x = 0.0;
      }
      if (initObj.hasOwnProperty('air_y')) {
        this.air_y = initObj.air_y
      }
      else {
        this.air_y = 0.0;
      }
      if (initObj.hasOwnProperty('sentry_x')) {
        this.sentry_x = initObj.sentry_x
      }
      else {
        this.sentry_x = 0.0;
      }
      if (initObj.hasOwnProperty('sentry_y')) {
        this.sentry_y = initObj.sentry_y
      }
      else {
        this.sentry_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarEnemyPosition
    // Serialize message field [hero_x]
    bufferOffset = _serializer.float32(obj.hero_x, buffer, bufferOffset);
    // Serialize message field [hero_y]
    bufferOffset = _serializer.float32(obj.hero_y, buffer, bufferOffset);
    // Serialize message field [engineer_x]
    bufferOffset = _serializer.float32(obj.engineer_x, buffer, bufferOffset);
    // Serialize message field [engineer_y]
    bufferOffset = _serializer.float32(obj.engineer_y, buffer, bufferOffset);
    // Serialize message field [standard_3_x]
    bufferOffset = _serializer.float32(obj.standard_3_x, buffer, bufferOffset);
    // Serialize message field [standard_3_y]
    bufferOffset = _serializer.float32(obj.standard_3_y, buffer, bufferOffset);
    // Serialize message field [standard_4_x]
    bufferOffset = _serializer.float32(obj.standard_4_x, buffer, bufferOffset);
    // Serialize message field [standard_4_y]
    bufferOffset = _serializer.float32(obj.standard_4_y, buffer, bufferOffset);
    // Serialize message field [air_x]
    bufferOffset = _serializer.float32(obj.air_x, buffer, bufferOffset);
    // Serialize message field [air_y]
    bufferOffset = _serializer.float32(obj.air_y, buffer, bufferOffset);
    // Serialize message field [sentry_x]
    bufferOffset = _serializer.float32(obj.sentry_x, buffer, bufferOffset);
    // Serialize message field [sentry_y]
    bufferOffset = _serializer.float32(obj.sentry_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarEnemyPosition
    let len;
    let data = new RadarEnemyPosition(null);
    // Deserialize message field [hero_x]
    data.hero_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hero_y]
    data.hero_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [engineer_x]
    data.engineer_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [engineer_y]
    data.engineer_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [standard_3_x]
    data.standard_3_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [standard_3_y]
    data.standard_3_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [standard_4_x]
    data.standard_4_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [standard_4_y]
    data.standard_4_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [air_x]
    data.air_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [air_y]
    data.air_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sentry_x]
    data.sentry_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sentry_y]
    data.sentry_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarEnemyPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ff9750e658ae1214e4c1775e4bd4a0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 hero_x
    float32 hero_y
    float32 engineer_x
    float32 engineer_y
    float32 standard_3_x
    float32 standard_3_y
    float32 standard_4_x
    float32 standard_4_y
    float32 air_x
    float32 air_y
    float32 sentry_x
    float32 sentry_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarEnemyPosition(null);
    if (msg.hero_x !== undefined) {
      resolved.hero_x = msg.hero_x;
    }
    else {
      resolved.hero_x = 0.0
    }

    if (msg.hero_y !== undefined) {
      resolved.hero_y = msg.hero_y;
    }
    else {
      resolved.hero_y = 0.0
    }

    if (msg.engineer_x !== undefined) {
      resolved.engineer_x = msg.engineer_x;
    }
    else {
      resolved.engineer_x = 0.0
    }

    if (msg.engineer_y !== undefined) {
      resolved.engineer_y = msg.engineer_y;
    }
    else {
      resolved.engineer_y = 0.0
    }

    if (msg.standard_3_x !== undefined) {
      resolved.standard_3_x = msg.standard_3_x;
    }
    else {
      resolved.standard_3_x = 0.0
    }

    if (msg.standard_3_y !== undefined) {
      resolved.standard_3_y = msg.standard_3_y;
    }
    else {
      resolved.standard_3_y = 0.0
    }

    if (msg.standard_4_x !== undefined) {
      resolved.standard_4_x = msg.standard_4_x;
    }
    else {
      resolved.standard_4_x = 0.0
    }

    if (msg.standard_4_y !== undefined) {
      resolved.standard_4_y = msg.standard_4_y;
    }
    else {
      resolved.standard_4_y = 0.0
    }

    if (msg.air_x !== undefined) {
      resolved.air_x = msg.air_x;
    }
    else {
      resolved.air_x = 0.0
    }

    if (msg.air_y !== undefined) {
      resolved.air_y = msg.air_y;
    }
    else {
      resolved.air_y = 0.0
    }

    if (msg.sentry_x !== undefined) {
      resolved.sentry_x = msg.sentry_x;
    }
    else {
      resolved.sentry_x = 0.0
    }

    if (msg.sentry_y !== undefined) {
      resolved.sentry_y = msg.sentry_y;
    }
    else {
      resolved.sentry_y = 0.0
    }

    return resolved;
    }
};

module.exports = RadarEnemyPosition;
