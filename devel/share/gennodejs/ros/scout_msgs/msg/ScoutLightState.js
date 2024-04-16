// Auto-generated. Do not edit!

// (in-package scout_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ScoutLightState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.custom_value = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('custom_value')) {
        this.custom_value = initObj.custom_value
      }
      else {
        this.custom_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScoutLightState
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [custom_value]
    bufferOffset = _serializer.uint8(obj.custom_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScoutLightState
    let len;
    let data = new ScoutLightState(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [custom_value]
    data.custom_value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_msgs/ScoutLightState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51866248399dda20e62f6b250914288e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mode
    uint8 custom_value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScoutLightState(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.custom_value !== undefined) {
      resolved.custom_value = msg.custom_value;
    }
    else {
      resolved.custom_value = 0
    }

    return resolved;
    }
};

module.exports = ScoutLightState;
