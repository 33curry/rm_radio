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

class RadarEnemyStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remainder_coin = null;
      this.total_coin = null;
      this.status_bitmask = null;
      this.enemy_assembly = null;
      this.enemy_ring_highland = null;
      this.enemy_trapezoidal_highland = null;
      this.enemy_fort = null;
      this.enemy_outpost = null;
      this.enemy_flying_slope_pre = null;
      this.enemy_flying_slope_post = null;
      this.enemy_highway_tunnel_l = null;
      this.enemy_highway_tunnel_h = null;
      this.enemy_central_high = null;
      this.enemy_central_low = null;
      this.enemy_highway_high = null;
    }
    else {
      if (initObj.hasOwnProperty('remainder_coin')) {
        this.remainder_coin = initObj.remainder_coin
      }
      else {
        this.remainder_coin = 0;
      }
      if (initObj.hasOwnProperty('total_coin')) {
        this.total_coin = initObj.total_coin
      }
      else {
        this.total_coin = 0;
      }
      if (initObj.hasOwnProperty('status_bitmask')) {
        this.status_bitmask = initObj.status_bitmask
      }
      else {
        this.status_bitmask = 0;
      }
      if (initObj.hasOwnProperty('enemy_assembly')) {
        this.enemy_assembly = initObj.enemy_assembly
      }
      else {
        this.enemy_assembly = false;
      }
      if (initObj.hasOwnProperty('enemy_ring_highland')) {
        this.enemy_ring_highland = initObj.enemy_ring_highland
      }
      else {
        this.enemy_ring_highland = false;
      }
      if (initObj.hasOwnProperty('enemy_trapezoidal_highland')) {
        this.enemy_trapezoidal_highland = initObj.enemy_trapezoidal_highland
      }
      else {
        this.enemy_trapezoidal_highland = false;
      }
      if (initObj.hasOwnProperty('enemy_fort')) {
        this.enemy_fort = initObj.enemy_fort
      }
      else {
        this.enemy_fort = false;
      }
      if (initObj.hasOwnProperty('enemy_outpost')) {
        this.enemy_outpost = initObj.enemy_outpost
      }
      else {
        this.enemy_outpost = false;
      }
      if (initObj.hasOwnProperty('enemy_flying_slope_pre')) {
        this.enemy_flying_slope_pre = initObj.enemy_flying_slope_pre
      }
      else {
        this.enemy_flying_slope_pre = false;
      }
      if (initObj.hasOwnProperty('enemy_flying_slope_post')) {
        this.enemy_flying_slope_post = initObj.enemy_flying_slope_post
      }
      else {
        this.enemy_flying_slope_post = false;
      }
      if (initObj.hasOwnProperty('enemy_highway_tunnel_l')) {
        this.enemy_highway_tunnel_l = initObj.enemy_highway_tunnel_l
      }
      else {
        this.enemy_highway_tunnel_l = false;
      }
      if (initObj.hasOwnProperty('enemy_highway_tunnel_h')) {
        this.enemy_highway_tunnel_h = initObj.enemy_highway_tunnel_h
      }
      else {
        this.enemy_highway_tunnel_h = false;
      }
      if (initObj.hasOwnProperty('enemy_central_high')) {
        this.enemy_central_high = initObj.enemy_central_high
      }
      else {
        this.enemy_central_high = false;
      }
      if (initObj.hasOwnProperty('enemy_central_low')) {
        this.enemy_central_low = initObj.enemy_central_low
      }
      else {
        this.enemy_central_low = false;
      }
      if (initObj.hasOwnProperty('enemy_highway_high')) {
        this.enemy_highway_high = initObj.enemy_highway_high
      }
      else {
        this.enemy_highway_high = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarEnemyStatus
    // Serialize message field [remainder_coin]
    bufferOffset = _serializer.uint16(obj.remainder_coin, buffer, bufferOffset);
    // Serialize message field [total_coin]
    bufferOffset = _serializer.uint16(obj.total_coin, buffer, bufferOffset);
    // Serialize message field [status_bitmask]
    bufferOffset = _serializer.uint32(obj.status_bitmask, buffer, bufferOffset);
    // Serialize message field [enemy_assembly]
    bufferOffset = _serializer.bool(obj.enemy_assembly, buffer, bufferOffset);
    // Serialize message field [enemy_ring_highland]
    bufferOffset = _serializer.bool(obj.enemy_ring_highland, buffer, bufferOffset);
    // Serialize message field [enemy_trapezoidal_highland]
    bufferOffset = _serializer.bool(obj.enemy_trapezoidal_highland, buffer, bufferOffset);
    // Serialize message field [enemy_fort]
    bufferOffset = _serializer.bool(obj.enemy_fort, buffer, bufferOffset);
    // Serialize message field [enemy_outpost]
    bufferOffset = _serializer.bool(obj.enemy_outpost, buffer, bufferOffset);
    // Serialize message field [enemy_flying_slope_pre]
    bufferOffset = _serializer.bool(obj.enemy_flying_slope_pre, buffer, bufferOffset);
    // Serialize message field [enemy_flying_slope_post]
    bufferOffset = _serializer.bool(obj.enemy_flying_slope_post, buffer, bufferOffset);
    // Serialize message field [enemy_highway_tunnel_l]
    bufferOffset = _serializer.bool(obj.enemy_highway_tunnel_l, buffer, bufferOffset);
    // Serialize message field [enemy_highway_tunnel_h]
    bufferOffset = _serializer.bool(obj.enemy_highway_tunnel_h, buffer, bufferOffset);
    // Serialize message field [enemy_central_high]
    bufferOffset = _serializer.bool(obj.enemy_central_high, buffer, bufferOffset);
    // Serialize message field [enemy_central_low]
    bufferOffset = _serializer.bool(obj.enemy_central_low, buffer, bufferOffset);
    // Serialize message field [enemy_highway_high]
    bufferOffset = _serializer.bool(obj.enemy_highway_high, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarEnemyStatus
    let len;
    let data = new RadarEnemyStatus(null);
    // Deserialize message field [remainder_coin]
    data.remainder_coin = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [total_coin]
    data.total_coin = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [status_bitmask]
    data.status_bitmask = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [enemy_assembly]
    data.enemy_assembly = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_ring_highland]
    data.enemy_ring_highland = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_trapezoidal_highland]
    data.enemy_trapezoidal_highland = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_fort]
    data.enemy_fort = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_outpost]
    data.enemy_outpost = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_flying_slope_pre]
    data.enemy_flying_slope_pre = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_flying_slope_post]
    data.enemy_flying_slope_post = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_highway_tunnel_l]
    data.enemy_highway_tunnel_l = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_highway_tunnel_h]
    data.enemy_highway_tunnel_h = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_central_high]
    data.enemy_central_high = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_central_low]
    data.enemy_central_low = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_highway_high]
    data.enemy_highway_high = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarEnemyStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51afc1aaa64cc6b69b332c25df8411d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 remainder_coin
    uint16 total_coin
    uint32 status_bitmask
    
    # Bit interpretation (True if occupied by enemy/active for enemy)
    # Bit 0
    bool enemy_assembly
    # Bit 1-2
    bool enemy_ring_highland
    # Bit 3
    bool enemy_trapezoidal_highland
    # Bit 4-5
    bool enemy_fort
    # Bit 6-7
    bool enemy_outpost
    # Bit 9 (Flying Slope Pre)
    bool enemy_flying_slope_pre
    # Bit 10 (Flying Slope Post)
    bool enemy_flying_slope_post
    # Bit 11 (Highway/Tunnel L?)
    bool enemy_highway_tunnel_l
    # Bit 12 (Highway/Tunnel H?)
    bool enemy_highway_tunnel_h
    # Bit 13 (Highland High)
    bool enemy_central_high
    # Bit 14 (Highland Fly?)
    bool enemy_central_low
    # Bit 15 (Highland Road)
    bool enemy_highway_high
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarEnemyStatus(null);
    if (msg.remainder_coin !== undefined) {
      resolved.remainder_coin = msg.remainder_coin;
    }
    else {
      resolved.remainder_coin = 0
    }

    if (msg.total_coin !== undefined) {
      resolved.total_coin = msg.total_coin;
    }
    else {
      resolved.total_coin = 0
    }

    if (msg.status_bitmask !== undefined) {
      resolved.status_bitmask = msg.status_bitmask;
    }
    else {
      resolved.status_bitmask = 0
    }

    if (msg.enemy_assembly !== undefined) {
      resolved.enemy_assembly = msg.enemy_assembly;
    }
    else {
      resolved.enemy_assembly = false
    }

    if (msg.enemy_ring_highland !== undefined) {
      resolved.enemy_ring_highland = msg.enemy_ring_highland;
    }
    else {
      resolved.enemy_ring_highland = false
    }

    if (msg.enemy_trapezoidal_highland !== undefined) {
      resolved.enemy_trapezoidal_highland = msg.enemy_trapezoidal_highland;
    }
    else {
      resolved.enemy_trapezoidal_highland = false
    }

    if (msg.enemy_fort !== undefined) {
      resolved.enemy_fort = msg.enemy_fort;
    }
    else {
      resolved.enemy_fort = false
    }

    if (msg.enemy_outpost !== undefined) {
      resolved.enemy_outpost = msg.enemy_outpost;
    }
    else {
      resolved.enemy_outpost = false
    }

    if (msg.enemy_flying_slope_pre !== undefined) {
      resolved.enemy_flying_slope_pre = msg.enemy_flying_slope_pre;
    }
    else {
      resolved.enemy_flying_slope_pre = false
    }

    if (msg.enemy_flying_slope_post !== undefined) {
      resolved.enemy_flying_slope_post = msg.enemy_flying_slope_post;
    }
    else {
      resolved.enemy_flying_slope_post = false
    }

    if (msg.enemy_highway_tunnel_l !== undefined) {
      resolved.enemy_highway_tunnel_l = msg.enemy_highway_tunnel_l;
    }
    else {
      resolved.enemy_highway_tunnel_l = false
    }

    if (msg.enemy_highway_tunnel_h !== undefined) {
      resolved.enemy_highway_tunnel_h = msg.enemy_highway_tunnel_h;
    }
    else {
      resolved.enemy_highway_tunnel_h = false
    }

    if (msg.enemy_central_high !== undefined) {
      resolved.enemy_central_high = msg.enemy_central_high;
    }
    else {
      resolved.enemy_central_high = false
    }

    if (msg.enemy_central_low !== undefined) {
      resolved.enemy_central_low = msg.enemy_central_low;
    }
    else {
      resolved.enemy_central_low = false
    }

    if (msg.enemy_highway_high !== undefined) {
      resolved.enemy_highway_high = msg.enemy_highway_high;
    }
    else {
      resolved.enemy_highway_high = false
    }

    return resolved;
    }
};

module.exports = RadarEnemyStatus;
