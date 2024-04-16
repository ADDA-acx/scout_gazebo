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

class ScoutLightCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_cmd_light_control = null;
      this.front_mode = null;
      this.front_custom_value = null;
      this.rear_mode = null;
      this.rear_custom_value = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_cmd_light_control')) {
        this.enable_cmd_light_control = initObj.enable_cmd_light_control
      }
      else {
        this.enable_cmd_light_control = false;
      }
      if (initObj.hasOwnProperty('front_mode')) {
        this.front_mode = initObj.front_mode
      }
      else {
        this.front_mode = 0;
      }
      if (initObj.hasOwnProperty('front_custom_value')) {
        this.front_custom_value = initObj.front_custom_value
      }
      else {
        this.front_custom_value = 0;
      }
      if (initObj.hasOwnProperty('rear_mode')) {
        this.rear_mode = initObj.rear_mode
      }
      else {
        this.rear_mode = 0;
      }
      if (initObj.hasOwnProperty('rear_custom_value')) {
        this.rear_custom_value = initObj.rear_custom_value
      }
      else {
        this.rear_custom_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScoutLightCmd
    // Serialize message field [enable_cmd_light_control]
    bufferOffset = _serializer.bool(obj.enable_cmd_light_control, buffer, bufferOffset);
    // Serialize message field [front_mode]
    bufferOffset = _serializer.uint8(obj.front_mode, buffer, bufferOffset);
    // Serialize message field [front_custom_value]
    bufferOffset = _serializer.uint8(obj.front_custom_value, buffer, bufferOffset);
    // Serialize message field [rear_mode]
    bufferOffset = _serializer.uint8(obj.rear_mode, buffer, bufferOffset);
    // Serialize message field [rear_custom_value]
    bufferOffset = _serializer.uint8(obj.rear_custom_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScoutLightCmd
    let len;
    let data = new ScoutLightCmd(null);
    // Deserialize message field [enable_cmd_light_control]
    data.enable_cmd_light_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_mode]
    data.front_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [front_custom_value]
    data.front_custom_value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rear_mode]
    data.rear_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rear_custom_value]
    data.rear_custom_value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_msgs/ScoutLightCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4efcbd363caf677fd8138923f982df13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LIGHT_CONST_OFF = 0
    uint8 LIGHT_CONST_ON = 1
    uint8 LIGHT_BREATH = 2
    uint8 LIGHT_CUSTOM = 3
    
    bool enable_cmd_light_control
    uint8 front_mode
    uint8 front_custom_value
    uint8 rear_mode
    uint8 rear_custom_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScoutLightCmd(null);
    if (msg.enable_cmd_light_control !== undefined) {
      resolved.enable_cmd_light_control = msg.enable_cmd_light_control;
    }
    else {
      resolved.enable_cmd_light_control = false
    }

    if (msg.front_mode !== undefined) {
      resolved.front_mode = msg.front_mode;
    }
    else {
      resolved.front_mode = 0
    }

    if (msg.front_custom_value !== undefined) {
      resolved.front_custom_value = msg.front_custom_value;
    }
    else {
      resolved.front_custom_value = 0
    }

    if (msg.rear_mode !== undefined) {
      resolved.rear_mode = msg.rear_mode;
    }
    else {
      resolved.rear_mode = 0
    }

    if (msg.rear_custom_value !== undefined) {
      resolved.rear_custom_value = msg.rear_custom_value;
    }
    else {
      resolved.rear_custom_value = 0
    }

    return resolved;
    }
};

// Constants for message
ScoutLightCmd.Constants = {
  LIGHT_CONST_OFF: 0,
  LIGHT_CONST_ON: 1,
  LIGHT_BREATH: 2,
  LIGHT_CUSTOM: 3,
}

module.exports = ScoutLightCmd;
