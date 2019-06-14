// Auto-generated. Do not edit!

// (in-package hand_analysis.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GraspInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.emg = null;
      this.glove = null;
      this.glove_low_dim = null;
      this.label = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('emg')) {
        this.emg = initObj.emg
      }
      else {
        this.emg = [];
      }
      if (initObj.hasOwnProperty('glove')) {
        this.glove = initObj.glove
      }
      else {
        this.glove = [];
      }
      if (initObj.hasOwnProperty('glove_low_dim')) {
        this.glove_low_dim = initObj.glove_low_dim
      }
      else {
        this.glove_low_dim = [];
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspInfo
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [emg]
    bufferOffset = _arraySerializer.float32(obj.emg, buffer, bufferOffset, null);
    // Serialize message field [glove]
    bufferOffset = _arraySerializer.float32(obj.glove, buffer, bufferOffset, null);
    // Serialize message field [glove_low_dim]
    bufferOffset = _arraySerializer.float32(obj.glove_low_dim, buffer, bufferOffset, null);
    // Serialize message field [label]
    bufferOffset = _serializer.int32(obj.label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspInfo
    let len;
    let data = new GraspInfo(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [emg]
    data.emg = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [glove]
    data.glove = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [glove_low_dim]
    data.glove_low_dim = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [label]
    data.label = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.emg.length;
    length += 4 * object.glove.length;
    length += 4 * object.glove_low_dim.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_analysis/GraspInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2f5dd8e97a79bb063f6e5cb0ae95755';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    float32[] emg
    float32[] glove
    float32[] glove_low_dim
    int32 label
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspInfo(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.emg !== undefined) {
      resolved.emg = msg.emg;
    }
    else {
      resolved.emg = []
    }

    if (msg.glove !== undefined) {
      resolved.glove = msg.glove;
    }
    else {
      resolved.glove = []
    }

    if (msg.glove_low_dim !== undefined) {
      resolved.glove_low_dim = msg.glove_low_dim;
    }
    else {
      resolved.glove_low_dim = []
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
    }

    return resolved;
    }
};

module.exports = GraspInfo;
