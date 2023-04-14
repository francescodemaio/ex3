// Auto-generated. Do not edit!

// (in-package sevendof_man.srv)


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

class transfRequest {
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
    // Serializes a message object of type transfRequest
    // Serialize message field [frame_a]
    bufferOffset = std_msgs.msg.String.serialize(obj.frame_a, buffer, bufferOffset);
    // Serialize message field [frame_b]
    bufferOffset = std_msgs.msg.String.serialize(obj.frame_b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type transfRequest
    let len;
    let data = new transfRequest(null);
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
    return 'sevendof_man/transfRequest';
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
    const resolved = new transfRequest(null);
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

class transfResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transf = null;
    }
    else {
      if (initObj.hasOwnProperty('transf')) {
        this.transf = initObj.transf
      }
      else {
        this.transf = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type transfResponse
    // Serialize message field [transf]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.transf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type transfResponse
    let len;
    let data = new transfResponse(null);
    // Deserialize message field [transf]
    data.transf = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sevendof_man/transfResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3387a3d5e947752a74515dc57640dc0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose transf
    
    
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
    const resolved = new transfResponse(null);
    if (msg.transf !== undefined) {
      resolved.transf = geometry_msgs.msg.Pose.Resolve(msg.transf)
    }
    else {
      resolved.transf = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: transfRequest,
  Response: transfResponse,
  md5sum() { return 'f4f8a27149783d8b27548ce33c934862'; },
  datatype() { return 'sevendof_man/transf'; }
};
