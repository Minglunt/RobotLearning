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
      this.reset = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('reset')) {
        this.reset = initObj.reset
      }
      else {
        this.reset = false;
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
    // Serialize message field [reset]
    bufferOffset = _serializer.bool(obj.reset, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _arraySerializer.float64(obj.action, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotActionRequest
    let len;
    let data = new RobotActionRequest(null);
    // Deserialize message field [reset]
    data.reset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.action.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_sim/RobotActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79da883dcd5a0ceed7b1796e8e2c18ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool reset
    float64[] action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotActionRequest(null);
    if (msg.reset !== undefined) {
      resolved.reset = msg.reset;
    }
    else {
      resolved.reset = false
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
  md5sum() { return 'deed0c4232f46b277ae3fb2459043f25'; },
  datatype() { return 'robot_sim/RobotAction'; }
};
