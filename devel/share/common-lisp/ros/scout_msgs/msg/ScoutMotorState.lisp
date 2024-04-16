; Auto-generated. Do not edit!


(cl:in-package scout_msgs-msg)


;//! \htmlinclude ScoutMotorState.msg.html

(cl:defclass <ScoutMotorState> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (rpm
    :reader rpm
    :initarg :rpm
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass ScoutMotorState (<ScoutMotorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScoutMotorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScoutMotorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_msgs-msg:<ScoutMotorState> is deprecated: use scout_msgs-msg:ScoutMotorState instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <ScoutMotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:current-val is deprecated.  Use scout_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <ScoutMotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:rpm-val is deprecated.  Use scout_msgs-msg:rpm instead.")
  (rpm m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <ScoutMotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:temperature-val is deprecated.  Use scout_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScoutMotorState>) ostream)
  "Serializes a message object of type '<ScoutMotorState>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScoutMotorState>) istream)
  "Deserializes a message object of type '<ScoutMotorState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScoutMotorState>)))
  "Returns string type for a message object of type '<ScoutMotorState>"
  "scout_msgs/ScoutMotorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScoutMotorState)))
  "Returns string type for a message object of type 'ScoutMotorState"
  "scout_msgs/ScoutMotorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScoutMotorState>)))
  "Returns md5sum for a message object of type '<ScoutMotorState>"
  "9380628b50ebdc90ce46d4147360680d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScoutMotorState)))
  "Returns md5sum for a message object of type 'ScoutMotorState"
  "9380628b50ebdc90ce46d4147360680d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScoutMotorState>)))
  "Returns full string definition for message of type '<ScoutMotorState>"
  (cl:format cl:nil "float64 current~%float64 rpm~%float64 temperature~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScoutMotorState)))
  "Returns full string definition for message of type 'ScoutMotorState"
  (cl:format cl:nil "float64 current~%float64 rpm~%float64 temperature~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScoutMotorState>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScoutMotorState>))
  "Converts a ROS message object to a list"
  (cl:list 'ScoutMotorState
    (cl:cons ':current (current msg))
    (cl:cons ':rpm (rpm msg))
    (cl:cons ':temperature (temperature msg))
))
