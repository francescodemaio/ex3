// Auto-generated. Do not edit!

// (in-package pan_tilt_description.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class sumRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_a = null;
      this.frame_b = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_a')) {
        this.frame_a = initObj.frame_a
      }
      else {
        this.frame_a = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('frame_b')) {
        this.frame_b = initObj.frame_b
      }
      else {
        this.frame_b = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sumRequest
    // Serialize message field [frame_a]
    bufferOffset = std_msgs.msg.String.serialize(obj.frame_a, buffer, bufferOffset);
    // Serialize message field [frame_b]
    bufferOffset = std_msgs.msg.String.serialize(obj.frame_b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sumRequest
    let len;
    let data = new sumRequest(null);
    // Deserialize message field [frame_a]
    data.frame_a = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_b]
    data.frame_b = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.frame_a);
    length += std_msgs.msg.String.getMessageSize(object.frame_b);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pan_tilt_description/sumRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a792ec3034806d85024f1ea9d2e4f7bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String frame_a
    std_msgs/String frame_b
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sumRequest(null);
    if (msg.frame_a !== undefined) {
      resolved.frame_a = std_msgs.msg.String.Resolve(msg.frame_a)
    }
    else {
      resolved.frame_a = new std_msgs.msg.String()
    }

    if (msg.frame_b !== undefined) {
      resolved.frame_b = std_msgs.msg.String.Resolve(msg.frame_b)
    }
    else {
      resolved.frame_b = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class sumResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_ = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_')) {
        this.pose_ = initObj.pose_
      }
      else {
        this.pose_ = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sumResponse
    // Serialize message field [pose_]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sumResponse
    let len;
    let data = new sumResponse(null);
    // Deserialize message field [pose_]
    data.pose_ = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pan_tilt_description/sumResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'caae3e01e8202bfc17fc4610be0ea329';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose_
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sumResponse(null);
    if (msg.pose_ !== undefined) {
      resolved.pose_ = geometry_msgs.msg.Pose.Resolve(msg.pose_)
    }
    else {
      resolved.pose_ = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: sumRequest,
  Response: sumResponse,
  md5sum() { return '37cb92532aa956fd8be41d523af9c227'; },
  datatype() { return 'pan_tilt_description/sum'; }
};
