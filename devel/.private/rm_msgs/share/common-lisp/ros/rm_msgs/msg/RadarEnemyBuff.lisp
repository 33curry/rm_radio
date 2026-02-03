; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarEnemyBuff.msg.html

(cl:defclass <RadarEnemyBuff> (roslisp-msg-protocol:ros-message)
  ((hero
    :reader hero
    :initarg :hero
    :type rm_msgs-msg:RadarRobotBuff
    :initform (cl:make-instance 'rm_msgs-msg:RadarRobotBuff))
   (engineer
    :reader engineer
    :initarg :engineer
    :type rm_msgs-msg:RadarRobotBuff
    :initform (cl:make-instance 'rm_msgs-msg:RadarRobotBuff))
   (standard_3
    :reader standard_3
    :initarg :standard_3
    :type rm_msgs-msg:RadarRobotBuff
    :initform (cl:make-instance 'rm_msgs-msg:RadarRobotBuff))
   (standard_4
    :reader standard_4
    :initarg :standard_4
    :type rm_msgs-msg:RadarRobotBuff
    :initform (cl:make-instance 'rm_msgs-msg:RadarRobotBuff))
   (sentry
    :reader sentry
    :initarg :sentry
    :type rm_msgs-msg:RadarRobotBuff
    :initform (cl:make-instance 'rm_msgs-msg:RadarRobotBuff))
   (sentry_status
    :reader sentry_status
    :initarg :sentry_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarEnemyBuff (<RadarEnemyBuff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarEnemyBuff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarEnemyBuff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarEnemyBuff> is deprecated: use rm_msgs-msg:RadarEnemyBuff instead.")))

(cl:ensure-generic-function 'hero-val :lambda-list '(m))
(cl:defmethod hero-val ((m <RadarEnemyBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero-val is deprecated.  Use rm_msgs-msg:hero instead.")
  (hero m))

(cl:ensure-generic-function 'engineer-val :lambda-list '(m))
(cl:defmethod engineer-val ((m <RadarEnemyBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer-val is deprecated.  Use rm_msgs-msg:engineer instead.")
  (engineer m))

(cl:ensure-generic-function 'standard_3-val :lambda-list '(m))
(cl:defmethod standard_3-val ((m <RadarEnemyBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_3-val is deprecated.  Use rm_msgs-msg:standard_3 instead.")
  (standard_3 m))

(cl:ensure-generic-function 'standard_4-val :lambda-list '(m))
(cl:defmethod standard_4-val ((m <RadarEnemyBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_4-val is deprecated.  Use rm_msgs-msg:standard_4 instead.")
  (standard_4 m))

(cl:ensure-generic-function 'sentry-val :lambda-list '(m))
(cl:defmethod sentry-val ((m <RadarEnemyBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry-val is deprecated.  Use rm_msgs-msg:sentry instead.")
  (sentry m))

(cl:ensure-generic-function 'sentry_status-val :lambda-list '(m))
(cl:defmethod sentry_status-val ((m <RadarEnemyBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_status-val is deprecated.  Use rm_msgs-msg:sentry_status instead.")
  (sentry_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarEnemyBuff>) ostream)
  "Serializes a message object of type '<RadarEnemyBuff>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hero) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'engineer) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'standard_3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'standard_4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sentry) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarEnemyBuff>) istream)
  "Deserializes a message object of type '<RadarEnemyBuff>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hero) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'engineer) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'standard_3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'standard_4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sentry) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarEnemyBuff>)))
  "Returns string type for a message object of type '<RadarEnemyBuff>"
  "rm_msgs/RadarEnemyBuff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarEnemyBuff)))
  "Returns string type for a message object of type 'RadarEnemyBuff"
  "rm_msgs/RadarEnemyBuff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarEnemyBuff>)))
  "Returns md5sum for a message object of type '<RadarEnemyBuff>"
  "9496c17234cb8fd19e6a99a196c4479b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarEnemyBuff)))
  "Returns md5sum for a message object of type 'RadarEnemyBuff"
  "9496c17234cb8fd19e6a99a196c4479b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarEnemyBuff>)))
  "Returns full string definition for message of type '<RadarEnemyBuff>"
  (cl:format cl:nil "# ID: 0x0A05 对方机器人增益~%# 按照协议顺序：英雄、工程、步兵3、步兵4、哨兵~%RadarRobotBuff hero~%RadarRobotBuff engineer~%RadarRobotBuff standard_3~%RadarRobotBuff standard_4~%RadarRobotBuff sentry~%# 哨兵额外状态字节~%uint8 sentry_status~%~%================================================================================~%MSG: rm_msgs/RadarRobotBuff~%# 单个机器人的增益信息~%uint8 recovery_percent~%uint16 cooling_buff~%uint8 def_buff~%uint8 neg_def_buff~%uint16 attack_buff~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarEnemyBuff)))
  "Returns full string definition for message of type 'RadarEnemyBuff"
  (cl:format cl:nil "# ID: 0x0A05 对方机器人增益~%# 按照协议顺序：英雄、工程、步兵3、步兵4、哨兵~%RadarRobotBuff hero~%RadarRobotBuff engineer~%RadarRobotBuff standard_3~%RadarRobotBuff standard_4~%RadarRobotBuff sentry~%# 哨兵额外状态字节~%uint8 sentry_status~%~%================================================================================~%MSG: rm_msgs/RadarRobotBuff~%# 单个机器人的增益信息~%uint8 recovery_percent~%uint16 cooling_buff~%uint8 def_buff~%uint8 neg_def_buff~%uint16 attack_buff~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarEnemyBuff>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hero))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'engineer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'standard_3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'standard_4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sentry))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarEnemyBuff>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarEnemyBuff
    (cl:cons ':hero (hero msg))
    (cl:cons ':engineer (engineer msg))
    (cl:cons ':standard_3 (standard_3 msg))
    (cl:cons ':standard_4 (standard_4 msg))
    (cl:cons ':sentry (sentry msg))
    (cl:cons ':sentry_status (sentry_status msg))
))
