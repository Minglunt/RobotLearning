// Auto-generated. Do not edit!

// (in-package grasp_clustering.msg)


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
      this.label = null;
      this.emg = null;
      this.glove = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspInfo
    // Serialize message field [label]
    bufferOffset = _serializer.int32(obj.label, buffer, bufferOffset);
    // Serialize message field [emg]
    bufferOffset = _arraySerializer.float32(obj.emg, buffer, bufferOffset, null);
    // Serialize message field [glove]
    bufferOffset = _arraySerializer.float32(obj.glove, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspInfo
    let len;
    let data = new GraspInfo(null);
    // Deserialize message field [label]
    data.label = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [emg]
    data.emg = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [glove]
    data.glove = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.emg.length;
    length += 4 * object.glove.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'grasp_clustering/GraspInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83a64d3b70046df4ff006242975c6777';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 label
    float32[] emg
    float32[] glove
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspInfo(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
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

    return resolved;
    }
};

module.exports = GraspInfo;
