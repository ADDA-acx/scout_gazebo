; Auto-generated. Do not edit!


(cl:in-package scout_msgs-msg)


;//! \htmlinclude ScoutStatus.msg.html

(cl:defclass <ScoutStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0)
   (base_state
    :reader base_state
    :initarg :base_state
    :type cl:fixnum
    :initform 0)
   (control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:fixnum
    :initform 0)
   (fault_code
    :reader fault_code
    :initarg :fault_code
    :type cl:fixnum
    :initform 0)
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:float
    :initform 0.0)
   (motor_states
    :reader motor_states
    :initarg :motor_states
    :type (cl:vector scout_msgs-msg:ScoutMotorState)
   :initform (cl:make-array 4 :element-type 'scout_msgs-msg:ScoutMotorState :initial-element (cl:make-instance 'scout_msgs-msg:ScoutMotorState)))
   (light_control_enabled
    :reader light_control_enabled
    :initarg :light_control_enabled
    :type cl:boolean
    :initform cl:nil)
   (front_light_state
    :reader front_light_state
    :initarg :front_light_state
    :type scout_msgs-msg:ScoutLightState
    :initform (cl:make-instance 'scout_msgs-msg:ScoutLightState))
   (rear_light_state
    :reader rear_light_state
    :initarg :rear_light_state
    :type scout_msgs-msg:ScoutLightState
    :initform (cl:make-instance 'scout_msgs-msg:ScoutLightState)))
)

(cl:defclass ScoutStatus (<ScoutStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScoutStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScoutStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_msgs-msg:<ScoutStatus> is deprecated: use scout_msgs-msg:ScoutStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:header-val is deprecated.  Use scout_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:linear_velocity-val is deprecated.  Use scout_msgs-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:angular_velocity-val is deprecated.  Use scout_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'base_state-val :lambda-list '(m))
(cl:defmethod base_state-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:base_state-val is deprecated.  Use scout_msgs-msg:base_state instead.")
  (base_state m))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:control_mode-val is deprecated.  Use scout_msgs-msg:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'fault_code-val :lambda-list '(m))
(cl:defmethod fault_code-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:fault_code-val is deprecated.  Use scout_msgs-msg:fault_code instead.")
  (fault_code m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:battery_voltage-val is deprecated.  Use scout_msgs-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'motor_states-val :lambda-list '(m))
(cl:defmethod motor_states-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:motor_states-val is deprecated.  Use scout_msgs-msg:motor_states instead.")
  (motor_states m))

(cl:ensure-generic-function 'light_control_enabled-val :lambda-list '(m))
(cl:defmethod light_control_enabled-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:light_control_enabled-val is deprecated.  Use scout_msgs-msg:light_control_enabled instead.")
  (light_control_enabled m))

(cl:ensure-generic-function 'front_light_state-val :lambda-list '(m))
(cl:defmethod front_light_state-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:front_light_state-val is deprecated.  Use scout_msgs-msg:front_light_state instead.")
  (front_light_state m))

(cl:ensure-generic-function 'rear_light_state-val :lambda-list '(m))
(cl:defmethod rear_light_state-val ((m <ScoutStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:rear_light_state-val is deprecated.  Use scout_msgs-msg:rear_light_state instead.")
  (rear_light_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ScoutStatus>)))
    "Constants for message type '<ScoutStatus>"
  '((:MOTOR_ID_FRONT_RIGHT . 0)
    (:MOTOR_ID_FRONT_LEFT . 1)
    (:MOTOR_ID_REAR_RIGHT . 2)
    (:MOTOR_ID_REAR_LEFT . 3)
    (:LIGHT_ID_FRONT . 0)
    (:LIGHT_ID_REAR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ScoutStatus)))
    "Constants for message type 'ScoutStatus"
  '((:MOTOR_ID_FRONT_RIGHT . 0)
    (:MOTOR_ID_FRONT_LEFT . 1)
    (:MOTOR_ID_REAR_RIGHT . 2)
    (:MOTOR_ID_REAR_LEFT . 3)
    (:LIGHT_ID_FRONT . 0)
    (:LIGHT_ID_REAR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScoutStatus>) ostream)
  "Serializes a message object of type '<ScoutStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_code)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motor_states))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'light_control_enabled) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_light_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rear_light_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScoutStatus>) istream)
  "Deserializes a message object of type '<ScoutStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_code)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'motor_states) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'motor_states)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'scout_msgs-msg:ScoutMotorState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:setf (cl:slot-value msg 'light_control_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_light_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rear_light_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScoutStatus>)))
  "Returns string type for a message object of type '<ScoutStatus>"
  "scout_msgs/ScoutStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScoutStatus)))
  "Returns string type for a message object of type 'ScoutStatus"
  "scout_msgs/ScoutStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScoutStatus>)))
  "Returns md5sum for a message object of type '<ScoutStatus>"
  "7a49e199fd32bf5d7341d653c6b3ba6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScoutStatus)))
  "Returns md5sum for a message object of type 'ScoutStatus"
  "7a49e199fd32bf5d7341d653c6b3ba6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScoutStatus>)))
  "Returns full string definition for message of type '<ScoutStatus>"
  (cl:format cl:nil "Header header~%~%int8 MOTOR_ID_FRONT_RIGHT = 0~%int8 MOTOR_ID_FRONT_LEFT = 1~%int8 MOTOR_ID_REAR_RIGHT = 2~%int8 MOTOR_ID_REAR_LEFT = 3~%~%int8 LIGHT_ID_FRONT = 0~%int8 LIGHT_ID_REAR = 1~%~%# motion state~%float64 linear_velocity~%float64 angular_velocity~%~%# base state~%uint8 base_state~%uint8 control_mode~%uint16 fault_code~%float64 battery_voltage~%~%# motor state~%ScoutMotorState[4] motor_states~%~%# light state~%bool light_control_enabled~%ScoutLightState front_light_state~%ScoutLightState rear_light_state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: scout_msgs/ScoutMotorState~%float64 current~%float64 rpm~%float64 temperature~%================================================================================~%MSG: scout_msgs/ScoutLightState~%uint8 mode~%uint8 custom_value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScoutStatus)))
  "Returns full string definition for message of type 'ScoutStatus"
  (cl:format cl:nil "Header header~%~%int8 MOTOR_ID_FRONT_RIGHT = 0~%int8 MOTOR_ID_FRONT_LEFT = 1~%int8 MOTOR_ID_REAR_RIGHT = 2~%int8 MOTOR_ID_REAR_LEFT = 3~%~%int8 LIGHT_ID_FRONT = 0~%int8 LIGHT_ID_REAR = 1~%~%# motion state~%float64 linear_velocity~%float64 angular_velocity~%~%# base state~%uint8 base_state~%uint8 control_mode~%uint16 fault_code~%float64 battery_voltage~%~%# motor state~%ScoutMotorState[4] motor_states~%~%# light state~%bool light_control_enabled~%ScoutLightState front_light_state~%ScoutLightState rear_light_state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: scout_msgs/ScoutMotorState~%float64 current~%float64 rpm~%float64 temperature~%================================================================================~%MSG: scout_msgs/ScoutLightState~%uint8 mode~%uint8 custom_value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScoutStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     1
     1
     2
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_light_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rear_light_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScoutStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ScoutStatus
    (cl:cons ':header (header msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':base_state (base_state msg))
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':fault_code (fault_code msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':motor_states (motor_states msg))
    (cl:cons ':light_control_enabled (light_control_enabled msg))
    (cl:cons ':front_light_state (front_light_state msg))
    (cl:cons ':rear_light_state (rear_light_state msg))
))
