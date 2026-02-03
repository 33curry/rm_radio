; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarEnemyBulletAllowance.msg.html

(cl:defclass <RadarEnemyBulletAllowance> (roslisp-msg-protocol:ros-message)
  ((hero_bullet
    :reader hero_bullet
    :initarg :hero_bullet
    :type cl:fixnum
    :initform 0)
   (standard_3_bullet
    :reader standard_3_bullet
    :initarg :standard_3_bullet
    :type cl:fixnum
    :initform 0)
   (standard_4_bullet
    :reader standard_4_bullet
    :initarg :standard_4_bullet
    :type cl:fixnum
    :initform 0)
   (air_bullet
    :reader air_bullet
    :initarg :air_bullet
    :type cl:fixnum
    :initform 0)
   (sentry_bullet
    :reader sentry_bullet
    :initarg :sentry_bullet
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarEnemyBulletAllowance (<RadarEnemyBulletAllowance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarEnemyBulletAllowance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarEnemyBulletAllowance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarEnemyBulletAllowance> is deprecated: use rm_msgs-msg:RadarEnemyBulletAllowance instead.")))

(cl:ensure-generic-function 'hero_bullet-val :lambda-list '(m))
(cl:defmethod hero_bullet-val ((m <RadarEnemyBulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_bullet-val is deprecated.  Use rm_msgs-msg:hero_bullet instead.")
  (hero_bullet m))

(cl:ensure-generic-function 'standard_3_bullet-val :lambda-list '(m))
(cl:defmethod standard_3_bullet-val ((m <RadarEnemyBulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_3_bullet-val is deprecated.  Use rm_msgs-msg:standard_3_bullet instead.")
  (standard_3_bullet m))

(cl:ensure-generic-function 'standard_4_bullet-val :lambda-list '(m))
(cl:defmethod standard_4_bullet-val ((m <RadarEnemyBulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_4_bullet-val is deprecated.  Use rm_msgs-msg:standard_4_bullet instead.")
  (standard_4_bullet m))

(cl:ensure-generic-function 'air_bullet-val :lambda-list '(m))
(cl:defmethod air_bullet-val ((m <RadarEnemyBulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:air_bullet-val is deprecated.  Use rm_msgs-msg:air_bullet instead.")
  (air_bullet m))

(cl:ensure-generic-function 'sentry_bullet-val :lambda-list '(m))
(cl:defmethod sentry_bullet-val ((m <RadarEnemyBulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_bullet-val is deprecated.  Use rm_msgs-msg:sentry_bullet instead.")
  (sentry_bullet m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarEnemyBulletAllowance>) ostream)
  "Serializes a message object of type '<RadarEnemyBulletAllowance>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hero_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hero_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'standard_3_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'standard_3_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'standard_4_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'standard_4_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'air_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_bullet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_bullet)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarEnemyBulletAllowance>) istream)
  "Deserializes a message object of type '<RadarEnemyBulletAllowance>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hero_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hero_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'standard_3_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'standard_3_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'standard_4_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'standard_4_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'air_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_bullet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_bullet)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarEnemyBulletAllowance>)))
  "Returns string type for a message object of type '<RadarEnemyBulletAllowance>"
  "rm_msgs/RadarEnemyBulletAllowance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarEnemyBulletAllowance)))
  "Returns string type for a message object of type 'RadarEnemyBulletAllowance"
  "rm_msgs/RadarEnemyBulletAllowance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarEnemyBulletAllowance>)))
  "Returns md5sum for a message object of type '<RadarEnemyBulletAllowance>"
  "9c381ccbc9d54f5aa402ed75f0aecc4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarEnemyBulletAllowance)))
  "Returns md5sum for a message object of type 'RadarEnemyBulletAllowance"
  "9c381ccbc9d54f5aa402ed75f0aecc4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarEnemyBulletAllowance>)))
  "Returns full string definition for message of type '<RadarEnemyBulletAllowance>"
  (cl:format cl:nil "# ID: 0x0A03 对方允许发弹量~%uint16 hero_bullet~%uint16 standard_3_bullet~%uint16 standard_4_bullet~%uint16 air_bullet~%uint16 sentry_bullet~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarEnemyBulletAllowance)))
  "Returns full string definition for message of type 'RadarEnemyBulletAllowance"
  (cl:format cl:nil "# ID: 0x0A03 对方允许发弹量~%uint16 hero_bullet~%uint16 standard_3_bullet~%uint16 standard_4_bullet~%uint16 air_bullet~%uint16 sentry_bullet~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarEnemyBulletAllowance>))
  (cl:+ 0
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarEnemyBulletAllowance>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarEnemyBulletAllowance
    (cl:cons ':hero_bullet (hero_bullet msg))
    (cl:cons ':standard_3_bullet (standard_3_bullet msg))
    (cl:cons ':standard_4_bullet (standard_4_bullet msg))
    (cl:cons ':air_bullet (air_bullet msg))
    (cl:cons ':sentry_bullet (sentry_bullet msg))
))
