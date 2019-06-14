// Auto-generated. Do not edit!

// (in-package robot_sim.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RobotActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reset_robot = null;
      this.reset_pole_angle = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('reset_robot')) {
        this.reset_robot = initObj.reset_robot
      }
      else {
        this.reset_robot = false;
      }
      if (initObj.hasOwnProperty('reset_pole_angle')) {
        this.reset_pole_angle = initObj.reset_pole_angle
      }
      else {
        this.reset_pole_angle = 0.0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotActionRequest
    // Serialize message field [reset_robot]
    bufferOffset = _serializer.bool(obj.reset_robot, buffer, bufferOffset);
    // Serialize message field [reset_pole_angle]
    bufferOffset = _serializer.float64(obj.reset_pole_angle, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _arraySerializer.float64(obj.action, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotActionRequest
    let len;
    let data = new RobotActionRequest(null);
    // Deserialize message field [reset_robot]
    data.reset_robot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_pole_angle]
    data.reset_pole_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.action.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_sim/RobotActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8422b6453cd1f2d9a9ea48c82aaa1ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool reset_robot
    float64 reset_pole_angle
    
    float64[] action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotActionRequest(null);
    if (msg.reset_robot !== undefined) {
      resolved.reset_robot = msg.reset_robot;
    }
    else {
      resolved.reset_robot = false
    }

    if (msg.reset_pole_angle !== undefined) {
      resolved.reset_pole_angle = msg.reset_pole_angle;
    }
    else {
      resolved.reset_pole_angle = 0.0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = []
    }

    return resolved;
    }
};

class RobotActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_state = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotActionResponse
    // Serialize message field [robot_state]
    bufferOffset = _arraySerializer.float64(obj.robot_state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotActionResponse
    let len;
    let data = new RobotActionResponse(null);
    // Deserialize message field [robot_state]
    data.robot_state = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.robot_state.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_sim/RobotActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ba5a851eb3e75180022de39699d0bf4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] robot_state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotActionResponse(null);
    if (msg.robot_state !== undefined) {
      resolved.robot_state = msg.robot_state;
    }
    else {
      resolved.robot_state = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotActionRequest,
  Response: RobotActionResponse,
  md5sum() { return '29ad5cb30359c2a3444c7eb6d914b27b'; },
  datatype() { return 'robot_sim/RobotAction'; }
};
