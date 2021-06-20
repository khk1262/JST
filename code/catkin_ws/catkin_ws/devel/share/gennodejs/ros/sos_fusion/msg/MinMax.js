// Auto-generated. Do not edit!

// (in-package sos_fusion.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MinMax {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cen = null;
      this.min = null;
      this.max = null;
    }
    else {
      if (initObj.hasOwnProperty('cen')) {
        this.cen = initObj.cen
      }
      else {
        this.cen = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('max')) {
        this.max = initObj.max
      }
      else {
        this.max = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MinMax
    // Serialize message field [cen]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.cen, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.min, buffer, bufferOffset);
    // Serialize message field [max]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MinMax
    let len;
    let data = new MinMax(null);
    // Deserialize message field [cen]
    data.cen = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [max]
    data.max = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sos_fusion/MinMax';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07d108d9b7862b4dd2cf6e8fa86751ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Max and Min x, y points of cluster
    geometry_msgs/Point cen
    geometry_msgs/Point min
    geometry_msgs/Point max
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MinMax(null);
    if (msg.cen !== undefined) {
      resolved.cen = geometry_msgs.msg.Point.Resolve(msg.cen)
    }
    else {
      resolved.cen = new geometry_msgs.msg.Point()
    }

    if (msg.min !== undefined) {
      resolved.min = geometry_msgs.msg.Point.Resolve(msg.min)
    }
    else {
      resolved.min = new geometry_msgs.msg.Point()
    }

    if (msg.max !== undefined) {
      resolved.max = geometry_msgs.msg.Point.Resolve(msg.max)
    }
    else {
      resolved.max = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = MinMax;
