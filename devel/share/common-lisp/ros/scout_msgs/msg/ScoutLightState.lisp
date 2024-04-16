; Auto-generated. Do not edit!


(cl:in-package scout_msgs-msg)


;//! \htmlinclude ScoutLightState.msg.html

(cl:defclass <ScoutLightState> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (custom_value
    :reader custom_value
    :initarg :custom_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ScoutLightState (<ScoutLightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScoutLightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScoutLightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scout_msgs-msg:<ScoutLightState> is deprecated: use scout_msgs-msg:ScoutLightState instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ScoutLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:mode-val is deprecated.  Use scout_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'custom_value-val :lambda-list '(m))
(cl:defmethod custom_value-val ((m <ScoutLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scout_msgs-msg:custom_value-val is deprecated.  Use scout_msgs-msg:custom_value instead.")
  (custom_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScoutLightState>) ostream)
  "Serializes a message object of type '<ScoutLightState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScoutLightState>) istream)
  "Deserializes a message object of type '<ScoutLightState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScoutLightState>)))
  "Returns string type for a message object of type '<ScoutLightState>"
  "scout_msgs/ScoutLightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScoutLightState)))
  "Returns string type for a message object of type 'ScoutLightState"
  "scout_msgs/ScoutLightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScoutLightState>)))
  "Returns md5sum for a message object of type '<ScoutLightState>"
  "51866248399dda20e62f6b250914288e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScoutLightState)))
  "Returns md5sum for a message object of type 'ScoutLightState"
  "51866248399dda20e62f6b250914288e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScoutLightState>)))
  "Returns full string definition for message of type '<ScoutLightState>"
  (cl:format cl:nil "uint8 mode~%uint8 custom_value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScoutLightState)))
  "Returns full string definition for message of type 'ScoutLightState"
  (cl:format cl:nil "uint8 mode~%uint8 custom_value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScoutLightState>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScoutLightState>))
  "Converts a ROS message object to a list"
  (cl:list 'ScoutLightState
    (cl:cons ':mode (mode msg))
    (cl:cons ':custom_value (custom_value msg))
))
