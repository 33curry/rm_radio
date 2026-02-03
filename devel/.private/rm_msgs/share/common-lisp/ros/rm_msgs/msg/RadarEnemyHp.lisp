; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarEnemyHp.msg.html

(cl:defclass <RadarEnemyHp> (roslisp-msg-protocol:ros-message)
  ((hero_hp
    :reader hero_hp
    :initarg :hero_hp
    :type cl:fixnum
    :initform 0)
   (engineer_hp
    :reader engineer_hp
    :initarg :engineer_hp
    :type cl:fixnum
    :initform 0)
   (standard_3_hp
    :reader standard_3_hp
    :initarg :standard_3_hp
    :type cl:fixnum
    :initform 0)
   (standard_4_hp
    :reader standard_4_hp
    :initarg :standard_4_hp
    :type cl:fixnum
    :initform 0)
   (sentry_hp
    :reader sentry_hp
    :initarg :sentry_hp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarEnemyHp (<RadarEnemyHp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarEnemyHp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarEnemyHp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarEnemyHp> is deprecated: use rm_msgs-msg:RadarEnemyHp instead.")))

(cl:ensure-generic-function 'hero_hp-val :lambda-list '(m))
(cl:defmethod hero_hp-val ((m <RadarEnemyHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_hp-val is deprecated.  Use rm_msgs-msg:hero_hp instead.")
  (hero_hp m))

(cl:ensure-generic-function 'engineer_hp-val :lambda-list '(m))
(cl:defmethod engineer_hp-val ((m <RadarEnemyHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_hp-val is deprecated.  Use rm_msgs-msg:engineer_hp instead.")
  (engineer_hp m))

(cl:ensure-generic-function 'standard_3_hp-val :lambda-list '(m))
(cl:defmethod standard_3_hp-val ((m <RadarEnemyHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_3_hp-val is deprecated.  Use rm_msgs-msg:standard_3_hp instead.")
  (standard_3_hp m))

(cl:ensure-generic-function 'standard_4_hp-val :lambda-list '(m))
(cl:defmethod standard_4_hp-val ((m <RadarEnemyHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_4_hp-val is deprecated.  Use rm_msgs-msg:standard_4_hp instead.")
  (standard_4_hp m))

(cl:ensure-generic-function 'sentry_hp-val :lambda-list '(m))
(cl:defmethod sentry_hp-val ((m <RadarEnemyHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_hp-val is deprecated.  Use rm_msgs-msg:sentry_hp instead.")
  (sentry_hp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarEnemyHp>) ostream)
  "Serializes a message object of type '<RadarEnemyHp>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hero_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hero_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engineer_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'engineer_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'standard_3_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'standard_3_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'standard_4_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'standard_4_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_hp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarEnemyHp>) istream)
  "Deserializes a message object of type '<RadarEnemyHp>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hero_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hero_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engineer_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'engineer_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'standard_3_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'standard_3_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'standard_4_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'standard_4_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_hp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarEnemyHp>)))
  "Returns string type for a message object of type '<RadarEnemyHp>"
  "rm_msgs/RadarEnemyHp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarEnemyHp)))
  "Returns string type for a message object of type 'RadarEnemyHp"
  "rm_msgs/RadarEnemyHp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarEnemyHp>)))
  "Returns md5sum for a message object of type '<RadarEnemyHp>"
  "237ae6302bfb5769809771e806c70a45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarEnemyHp)))
  "Returns md5sum for a message object of type 'RadarEnemyHp"
  "237ae6302bfb5769809771e806c70a45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarEnemyHp>)))
  "Returns full string definition for message of type '<RadarEnemyHp>"
  (cl:format cl:nil "# ID: 0x0A02 对方机器人血量~%uint16 hero_hp~%uint16 engineer_hp~%uint16 standard_3_hp~%uint16 standard_4_hp~%uint16 sentry_hp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarEnemyHp)))
  "Returns full string definition for message of type 'RadarEnemyHp"
  (cl:format cl:nil "# ID: 0x0A02 对方机器人血量~%uint16 hero_hp~%uint16 engineer_hp~%uint16 standard_3_hp~%uint16 standard_4_hp~%uint16 sentry_hp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarEnemyHp>))
  (cl:+ 0
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarEnemyHp>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarEnemyHp
    (cl:cons ':hero_hp (hero_hp msg))
    (cl:cons ':engineer_hp (engineer_hp msg))
    (cl:cons ':standard_3_hp (standard_3_hp msg))
    (cl:cons ':standard_4_hp (standard_4_hp msg))
    (cl:cons ':sentry_hp (sentry_hp msg))
))
