// Auto-generated. Do not edit!

// (in-package scout_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ScoutMotorState = require('./ScoutMotorState.js');
let ScoutLightState = require('./ScoutLightState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ScoutStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.linear_velocity = null;
      this.angular_velocity = null;
      this.base_state = null;
      this.control_mode = null;
      this.fault_code = null;
      this.battery_voltage = null;
      this.motor_states = null;
      this.light_control_enabled = null;
      this.front_light_state = null;
      this.rear_light_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('base_state')) {
        this.base_state = initObj.base_state
      }
      else {
        this.base_state = 0;
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('fault_code')) {
        this.fault_code = initObj.fault_code
      }
      else {
        this.fault_code = 0;
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('motor_states')) {
        this.motor_states = initObj.motor_states
      }
      else {
        this.motor_states = new Array(4).fill(new ScoutMotorState());
      }
      if (initObj.hasOwnProperty('light_control_enabled')) {
        this.light_control_enabled = initObj.light_control_enabled
      }
      else {
        this.light_control_enabled = false;
      }
      if (initObj.hasOwnProperty('front_light_state')) {
        this.front_light_state = initObj.front_light_state
      }
      else {
        this.front_light_state = new ScoutLightState();
      }
      if (initObj.hasOwnProperty('rear_light_state')) {
        this.rear_light_state = initObj.rear_light_state
      }
      else {
        this.rear_light_state = new ScoutLightState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScoutStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = _serializer.float64(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float64(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [base_state]
    bufferOffset = _serializer.uint8(obj.base_state, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [fault_code]
    bufferOffset = _serializer.uint16(obj.fault_code, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float64(obj.battery_voltage, buffer, bufferOffset);
    // Check that the constant length array field [motor_states] has the right length
    if (obj.motor_states.length !== 4) {
      throw new Error('Unable to serialize array field motor_states - length must be 4')
    }
    // Serialize message field [motor_states]
    obj.motor_states.forEach((val) => {
      bufferOffset = ScoutMotorState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [light_control_enabled]
    bufferOffset = _serializer.bool(obj.light_control_enabled, buffer, bufferOffset);
    // Serialize message field [front_light_state]
    bufferOffset = ScoutLightState.serialize(obj.front_light_state, buffer, bufferOffset);
    // Serialize message field [rear_light_state]
    bufferOffset = ScoutLightState.serialize(obj.rear_light_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScoutStatus
    let len;
    let data = new ScoutStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [base_state]
    data.base_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fault_code]
    data.fault_code = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_states]
    len = 4;
    data.motor_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motor_states[i] = ScoutMotorState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [light_control_enabled]
    data.light_control_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_light_state]
    data.front_light_state = ScoutLightState.deserialize(buffer, bufferOffset);
    // Deserialize message field [rear_light_state]
    data.rear_light_state = ScoutLightState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 129;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_msgs/ScoutStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a49e199fd32bf5d7341d653c6b3ba6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 MOTOR_ID_FRONT_RIGHT = 0
    int8 MOTOR_ID_FRONT_LEFT = 1
    int8 MOTOR_ID_REAR_RIGHT = 2
    int8 MOTOR_ID_REAR_LEFT = 3
    
    int8 LIGHT_ID_FRONT = 0
    int8 LIGHT_ID_REAR = 1
    
    # motion state
    float64 linear_velocity
    float64 angular_velocity
    
    # base state
    uint8 base_state
    uint8 control_mode
    uint16 fault_code
    float64 battery_voltage
    
    # motor state
    ScoutMotorState[4] motor_states
    
    # light state
    bool light_control_enabled
    ScoutLightState front_light_state
    ScoutLightState rear_light_state
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
    MSG: scout_msgs/ScoutMotorState
    float64 current
    float64 rpm
    float64 temperature
    ================================================================================
    MSG: scout_msgs/ScoutLightState
    uint8 mode
    uint8 custom_value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScoutStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = msg.linear_velocity;
    }
    else {
      resolved.linear_velocity = 0.0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0.0
    }

    if (msg.base_state !== undefined) {
      resolved.base_state = msg.base_state;
    }
    else {
      resolved.base_state = 0
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.fault_code !== undefined) {
      resolved.fault_code = msg.fault_code;
    }
    else {
      resolved.fault_code = 0
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.motor_states !== undefined) {
      resolved.motor_states = new Array(4)
      for (let i = 0; i < resolved.motor_states.length; ++i) {
        if (msg.motor_states.length > i) {
          resolved.motor_states[i] = ScoutMotorState.Resolve(msg.motor_states[i]);
        }
        else {
          resolved.motor_states[i] = new ScoutMotorState();
        }
      }
    }
    else {
      resolved.motor_states = new Array(4).fill(new ScoutMotorState())
    }

    if (msg.light_control_enabled !== undefined) {
      resolved.light_control_enabled = msg.light_control_enabled;
    }
    else {
      resolved.light_control_enabled = false
    }

    if (msg.front_light_state !== undefined) {
      resolved.front_light_state = ScoutLightState.Resolve(msg.front_light_state)
    }
    else {
      resolved.front_light_state = new ScoutLightState()
    }

    if (msg.rear_light_state !== undefined) {
      resolved.rear_light_state = ScoutLightState.Resolve(msg.rear_light_state)
    }
    else {
      resolved.rear_light_state = new ScoutLightState()
    }

    return resolved;
    }
};

// Constants for message
ScoutStatus.Constants = {
  MOTOR_ID_FRONT_RIGHT: 0,
  MOTOR_ID_FRONT_LEFT: 1,
  MOTOR_ID_REAR_RIGHT: 2,
  MOTOR_ID_REAR_LEFT: 3,
  LIGHT_ID_FRONT: 0,
  LIGHT_ID_REAR: 1,
}

module.exports = ScoutStatus;
