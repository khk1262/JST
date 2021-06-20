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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PointArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cluster_center = null;
      this.cluster_min = null;
      this.cluster_max = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cluster_center')) {
        this.cluster_center = initObj.cluster_center
      }
      else {
        this.cluster_center = [];
      }
      if (initObj.hasOwnProperty('cluster_min')) {
        this.cluster_min = initObj.cluster_min
      }
      else {
        this.cluster_min = [];
      }
      if (initObj.hasOwnProperty('cluster_max')) {
        this.cluster_max = initObj.cluster_max
      }
      else {
        this.cluster_max = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cluster_center]
    // Serialize the length for message field [cluster_center]
    bufferOffset = _serializer.uint32(obj.cluster_center.length, buffer, bufferOffset);
    obj.cluster_center.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cluster_min]
    // Serialize the length for message field [cluster_min]
    bufferOffset = _serializer.uint32(obj.cluster_min.length, buffer, bufferOffset);
    obj.cluster_min.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cluster_max]
    // Serialize the length for message field [cluster_max]
    bufferOffset = _serializer.uint32(obj.cluster_max.length, buffer, bufferOffset);
    obj.cluster_max.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointArray
    let len;
    let data = new PointArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_center]
    // Deserialize array length for message field [cluster_center]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster_center = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster_center[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cluster_min]
    // Deserialize array length for message field [cluster_min]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster_min = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster_min[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cluster_max]
    // Deserialize array length for message field [cluster_max]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster_max = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster_max[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.cluster_center.length;
    length += 24 * object.cluster_min.length;
    length += 24 * object.cluster_max.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sos_fusion/PointArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fe739f074abe7938c339e74128b9b77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/Point[] cluster_center
    geometry_msgs/Point[] cluster_min
    geometry_msgs/Point[] cluster_max
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new PointArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cluster_center !== undefined) {
      resolved.cluster_center = new Array(msg.cluster_center.length);
      for (let i = 0; i < resolved.cluster_center.length; ++i) {
        resolved.cluster_center[i] = geometry_msgs.msg.Point.Resolve(msg.cluster_center[i]);
      }
    }
    else {
      resolved.cluster_center = []
    }

    if (msg.cluster_min !== undefined) {
      resolved.cluster_min = new Array(msg.cluster_min.length);
      for (let i = 0; i < resolved.cluster_min.length; ++i) {
        resolved.cluster_min[i] = geometry_msgs.msg.Point.Resolve(msg.cluster_min[i]);
      }
    }
    else {
      resolved.cluster_min = []
    }

    if (msg.cluster_max !== undefined) {
      resolved.cluster_max = new Array(msg.cluster_max.length);
      for (let i = 0; i < resolved.cluster_max.length; ++i) {
        resolved.cluster_max[i] = geometry_msgs.msg.Point.Resolve(msg.cluster_max[i]);
      }
    }
    else {
      resolved.cluster_max = []
    }

    return resolved;
    }
};

module.exports = PointArray;
