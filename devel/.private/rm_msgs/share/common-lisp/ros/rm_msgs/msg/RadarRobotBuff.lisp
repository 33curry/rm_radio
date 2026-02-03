; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarRobotBuff.msg.html

(cl:defclass <RadarRobotBuff> (roslisp-msg-protocol:ros-message)
  ((recovery_percent
    :reader recovery_percent
    :initarg :recovery_percent
    :type cl:fixnum
    :initform 0)
   (cooling_buff
    :reader cooling_buff
    :initarg :cooling_buff
    :type cl:fixnum
    :initform 0)
   (def_buff
    :reader def_buff
    :initarg :def_buff
    :type cl:fixnum
    :initform 0)
   (neg_def_buff
    :reader neg_def_buff
    :initarg :neg_def_buff
    :type cl:fixnum
    :initform 0)
   (attack_buff
    :reader attack_buff
    :initarg :attack_buff
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarRobotBuff (<RadarRobotBuff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarRobotBuff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarRobotBuff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarRobotBuff> is deprecated: use rm_msgs-msg:RadarRobotBuff instead.")))

(cl:ensure-generic-function 'recovery_percent-val :lambda-list '(m))
(cl:defmethod recovery_percent-val ((m <RadarRobotBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:recovery_percent-val is deprecated.  Use rm_msgs-msg:recovery_percent instead.")
  (recovery_percent m))

(cl:ensure-generic-function 'cooling_buff-val :lambda-list '(m))
(cl:defmethod cooling_buff-val ((m <RadarRobotBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:cooling_buff-val is deprecated.  Use rm_msgs-msg:cooling_buff instead.")
  (cooling_buff m))

(cl:ensure-generic-function 'def_buff-val :lambda-list '(m))
(cl:defmethod def_buff-val ((m <RadarRobotBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:def_buff-val is deprecated.  Use rm_msgs-msg:def_buff instead.")
  (def_buff m))

(cl:ensure-generic-function 'neg_def_buff-val :lambda-list '(m))
(cl:defmethod neg_def_buff-val ((m <RadarRobotBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:neg_def_buff-val is deprecated.  Use rm_msgs-msg:neg_def_buff instead.")
  (neg_def_buff m))

(cl:ensure-generic-function 'attack_buff-val :lambda-list '(m))
(cl:defmethod attack_buff-val ((m <RadarRobotBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:attack_buff-val is deprecated.  Use rm_msgs-msg:attack_buff instead.")
  (attack_buff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarRobotBuff>) ostream)
  "Serializes a message object of type '<RadarRobotBuff>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recovery_percent)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooling_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cooling_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'def_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'neg_def_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'attack_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'attack_buff)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarRobotBuff>) istream)
  "Deserializes a message object of type '<RadarRobotBuff>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recovery_percent)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooling_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cooling_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'def_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'neg_def_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'attack_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'attack_buff)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarRobotBuff>)))
  "Returns string type for a message object of type '<RadarRobotBuff>"
  "rm_msgs/RadarRobotBuff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarRobotBuff)))
  "Returns string type for a message object of type 'RadarRobotBuff"
  "rm_msgs/RadarRobotBuff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarRobotBuff>)))
  "Returns md5sum for a message object of type '<RadarRobotBuff>"
  "6787d7b9505d543c4cee8752169fddfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarRobotBuff)))
  "Returns md5sum for a message object of type 'RadarRobotBuff"
  "6787d7b9505d543c4cee8752169fddfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarRobotBuff>)))
  "Returns full string definition for message of type '<RadarRobotBuff>"
  (cl:format cl:nil "# 单个机器人的增益信息~%uint8 recovery_percent~%uint16 cooling_buff~%uint8 def_buff~%uint8 neg_def_buff~%uint16 attack_buff~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarRobotBuff)))
  "Returns full string definition for message of type 'RadarRobotBuff"
  (cl:format cl:nil "# 单个机器人的增益信息~%uint8 recovery_percent~%uint16 cooling_buff~%uint8 def_buff~%uint8 neg_def_buff~%uint16 attack_buff~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarRobotBuff>))
  (cl:+ 0
     1
     2
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarRobotBuff>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarRobotBuff
    (cl:cons ':recovery_percent (recovery_percent msg))
    (cl:cons ':cooling_buff (cooling_buff msg))
    (cl:cons ':def_buff (def_buff msg))
    (cl:cons ':neg_def_buff (neg_def_buff msg))
    (cl:cons ':attack_buff (attack_buff msg))
))
