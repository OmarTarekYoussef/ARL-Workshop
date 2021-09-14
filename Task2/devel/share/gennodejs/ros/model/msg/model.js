// Auto-generated. Do not edit!

// (in-package model.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class model {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.delta = null;
      this.beta = null;
      this.xc_dot = null;
      this.ycdot = null;
      this.theta_dot = null;
      this.delta_dot = null;
      this.xc = null;
      this.yc = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('delta')) {
        this.delta = initObj.delta
      }
      else {
        this.delta = 0.0;
      }
      if (initObj.hasOwnProperty('beta')) {
        this.beta = initObj.beta
      }
      else {
        this.beta = 0.0;
      }
      if (initObj.hasOwnProperty('xc_dot')) {
        this.xc_dot = initObj.xc_dot
      }
      else {
        this.xc_dot = 0.0;
      }
      if (initObj.hasOwnProperty('ycdot')) {
        this.ycdot = initObj.ycdot
      }
      else {
        this.ycdot = 0.0;
      }
      if (initObj.hasOwnProperty('theta_dot')) {
        this.theta_dot = initObj.theta_dot
      }
      else {
        this.theta_dot = 0.0;
      }
      if (initObj.hasOwnProperty('delta_dot')) {
        this.delta_dot = initObj.delta_dot
      }
      else {
        this.delta_dot = 0.0;
      }
      if (initObj.hasOwnProperty('xc')) {
        this.xc = initObj.xc
      }
      else {
        this.xc = 0.0;
      }
      if (initObj.hasOwnProperty('yc')) {
        this.yc = initObj.yc
      }
      else {
        this.yc = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type model
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [delta]
    bufferOffset = _serializer.float64(obj.delta, buffer, bufferOffset);
    // Serialize message field [beta]
    bufferOffset = _serializer.float64(obj.beta, buffer, bufferOffset);
    // Serialize message field [xc_dot]
    bufferOffset = _serializer.float64(obj.xc_dot, buffer, bufferOffset);
    // Serialize message field [ycdot]
    bufferOffset = _serializer.float64(obj.ycdot, buffer, bufferOffset);
    // Serialize message field [theta_dot]
    bufferOffset = _serializer.float64(obj.theta_dot, buffer, bufferOffset);
    // Serialize message field [delta_dot]
    bufferOffset = _serializer.float64(obj.delta_dot, buffer, bufferOffset);
    // Serialize message field [xc]
    bufferOffset = _serializer.float64(obj.xc, buffer, bufferOffset);
    // Serialize message field [yc]
    bufferOffset = _serializer.float64(obj.yc, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type model
    let len;
    let data = new model(null);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [delta]
    data.delta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [beta]
    data.beta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xc_dot]
    data.xc_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ycdot]
    data.ycdot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_dot]
    data.theta_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [delta_dot]
    data.delta_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xc]
    data.xc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yc]
    data.yc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'model/model';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6e1c30125128374c4d6c2133db77f6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 velocity
    float64 delta
    float64 beta
    float64 xc_dot
    float64 ycdot
    float64 theta_dot
    float64 delta_dot
    float64 xc
    float64 yc
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new model(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.delta !== undefined) {
      resolved.delta = msg.delta;
    }
    else {
      resolved.delta = 0.0
    }

    if (msg.beta !== undefined) {
      resolved.beta = msg.beta;
    }
    else {
      resolved.beta = 0.0
    }

    if (msg.xc_dot !== undefined) {
      resolved.xc_dot = msg.xc_dot;
    }
    else {
      resolved.xc_dot = 0.0
    }

    if (msg.ycdot !== undefined) {
      resolved.ycdot = msg.ycdot;
    }
    else {
      resolved.ycdot = 0.0
    }

    if (msg.theta_dot !== undefined) {
      resolved.theta_dot = msg.theta_dot;
    }
    else {
      resolved.theta_dot = 0.0
    }

    if (msg.delta_dot !== undefined) {
      resolved.delta_dot = msg.delta_dot;
    }
    else {
      resolved.delta_dot = 0.0
    }

    if (msg.xc !== undefined) {
      resolved.xc = msg.xc;
    }
    else {
      resolved.xc = 0.0
    }

    if (msg.yc !== undefined) {
      resolved.yc = msg.yc;
    }
    else {
      resolved.yc = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    return resolved;
    }
};

module.exports = model;
