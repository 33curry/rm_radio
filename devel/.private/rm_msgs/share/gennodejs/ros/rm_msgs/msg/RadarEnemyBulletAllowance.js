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

class RadarEnemyBulletAllowance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hero_bullet = null;
      this.standard_3_bullet = null;
      this.standard_4_bullet = null;
      this.air_bullet = null;
      this.sentry_bullet = null;
    }
    else {
      if (initObj.hasOwnProperty('hero_bullet')) {
        this.hero_bullet = initObj.hero_bullet
      }
      else {
        this.hero_bullet = 0;
      }
      if (initObj.hasOwnProperty('standard_3_bullet')) {
        this.standard_3_bullet = initObj.standard_3_bullet
      }
      else {
        this.standard_3_bullet = 0;
      }
      if (initObj.hasOwnProperty('standard_4_bullet')) {
        this.standard_4_bullet = initObj.standard_4_bullet
      }
      else {
        this.standard_4_bullet = 0;
      }
      if (initObj.hasOwnProperty('air_bullet')) {
        this.air_bullet = initObj.air_bullet
      }
      else {
        this.air_bullet = 0;
      }
      if (initObj.hasOwnProperty('sentry_bullet')) {
        this.sentry_bullet = initObj.sentry_bullet
      }
      else {
        this.sentry_bullet = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarEnemyBulletAllowance
    // Serialize message field [hero_bullet]
    bufferOffset = _serializer.uint16(obj.hero_bullet, buffer, bufferOffset);
    // Serialize message field [standard_3_bullet]
    bufferOffset = _serializer.uint16(obj.standard_3_bullet, buffer, bufferOffset);
    // Serialize message field [standard_4_bullet]
    bufferOffset = _serializer.uint16(obj.standard_4_bullet, buffer, bufferOffset);
    // Serialize message field [air_bullet]
    bufferOffset = _serializer.uint16(obj.air_bullet, buffer, bufferOffset);
    // Serialize message field [sentry_bullet]
    bufferOffset = _serializer.uint16(obj.sentry_bullet, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarEnemyBulletAllowance
    let len;
    let data = new RadarEnemyBulletAllowance(null);
    // Deserialize message field [hero_bullet]
    data.hero_bullet = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [standard_3_bullet]
    data.standard_3_bullet = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [standard_4_bullet]
    data.standard_4_bullet = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [air_bullet]
    data.air_bullet = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sentry_bullet]
    data.sentry_bullet = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarEnemyBulletAllowance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c381ccbc9d54f5aa402ed75f0aecc4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ID: 0x0A03 对方允许发弹量
    uint16 hero_bullet
    uint16 standard_3_bullet
    uint16 standard_4_bullet
    uint16 air_bullet
    uint16 sentry_bullet
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarEnemyBulletAllowance(null);
    if (msg.hero_bullet !== undefined) {
      resolved.hero_bullet = msg.hero_bullet;
    }
    else {
      resolved.hero_bullet = 0
    }

    if (msg.standard_3_bullet !== undefined) {
      resolved.standard_3_bullet = msg.standard_3_bullet;
    }
    else {
      resolved.standard_3_bullet = 0
    }

    if (msg.standard_4_bullet !== undefined) {
      resolved.standard_4_bullet = msg.standard_4_bullet;
    }
    else {
      resolved.standard_4_bullet = 0
    }

    if (msg.air_bullet !== undefined) {
      resolved.air_bullet = msg.air_bullet;
    }
    else {
      resolved.air_bullet = 0
    }

    if (msg.sentry_bullet !== undefined) {
      resolved.sentry_bullet = msg.sentry_bullet;
    }
    else {
      resolved.sentry_bullet = 0
    }

    return resolved;
    }
};

module.exports = RadarEnemyBulletAllowance;
