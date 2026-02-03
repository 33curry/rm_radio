; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarEnemyPosition.msg.html

(cl:defclass <RadarEnemyPosition> (roslisp-msg-protocol:ros-message)
  ((hero_x
    :reader hero_x
    :initarg :hero_x
    :type cl:float
    :initform 0.0)
   (hero_y
    :reader hero_y
    :initarg :hero_y
    :type cl:float
    :initform 0.0)
   (engineer_x
    :reader engineer_x
    :initarg :engineer_x
    :type cl:float
    :initform 0.0)
   (engineer_y
    :reader engineer_y
    :initarg :engineer_y
    :type cl:float
    :initform 0.0)
   (standard_3_x
    :reader standard_3_x
    :initarg :standard_3_x
    :type cl:float
    :initform 0.0)
   (standard_3_y
    :reader standard_3_y
    :initarg :standard_3_y
    :type cl:float
    :initform 0.0)
   (standard_4_x
    :reader standard_4_x
    :initarg :standard_4_x
    :type cl:float
    :initform 0.0)
   (standard_4_y
    :reader standard_4_y
    :initarg :standard_4_y
    :type cl:float
    :initform 0.0)
   (air_x
    :reader air_x
    :initarg :air_x
    :type cl:float
    :initform 0.0)
   (air_y
    :reader air_y
    :initarg :air_y
    :type cl:float
    :initform 0.0)
   (sentry_x
    :reader sentry_x
    :initarg :sentry_x
    :type cl:float
    :initform 0.0)
   (sentry_y
    :reader sentry_y
    :initarg :sentry_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadarEnemyPosition (<RadarEnemyPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarEnemyPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarEnemyPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarEnemyPosition> is deprecated: use rm_msgs-msg:RadarEnemyPosition instead.")))

(cl:ensure-generic-function 'hero_x-val :lambda-list '(m))
(cl:defmethod hero_x-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_x-val is deprecated.  Use rm_msgs-msg:hero_x instead.")
  (hero_x m))

(cl:ensure-generic-function 'hero_y-val :lambda-list '(m))
(cl:defmethod hero_y-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_y-val is deprecated.  Use rm_msgs-msg:hero_y instead.")
  (hero_y m))

(cl:ensure-generic-function 'engineer_x-val :lambda-list '(m))
(cl:defmethod engineer_x-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_x-val is deprecated.  Use rm_msgs-msg:engineer_x instead.")
  (engineer_x m))

(cl:ensure-generic-function 'engineer_y-val :lambda-list '(m))
(cl:defmethod engineer_y-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_y-val is deprecated.  Use rm_msgs-msg:engineer_y instead.")
  (engineer_y m))

(cl:ensure-generic-function 'standard_3_x-val :lambda-list '(m))
(cl:defmethod standard_3_x-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_3_x-val is deprecated.  Use rm_msgs-msg:standard_3_x instead.")
  (standard_3_x m))

(cl:ensure-generic-function 'standard_3_y-val :lambda-list '(m))
(cl:defmethod standard_3_y-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_3_y-val is deprecated.  Use rm_msgs-msg:standard_3_y instead.")
  (standard_3_y m))

(cl:ensure-generic-function 'standard_4_x-val :lambda-list '(m))
(cl:defmethod standard_4_x-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_4_x-val is deprecated.  Use rm_msgs-msg:standard_4_x instead.")
  (standard_4_x m))

(cl:ensure-generic-function 'standard_4_y-val :lambda-list '(m))
(cl:defmethod standard_4_y-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_4_y-val is deprecated.  Use rm_msgs-msg:standard_4_y instead.")
  (standard_4_y m))

(cl:ensure-generic-function 'air_x-val :lambda-list '(m))
(cl:defmethod air_x-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:air_x-val is deprecated.  Use rm_msgs-msg:air_x instead.")
  (air_x m))

(cl:ensure-generic-function 'air_y-val :lambda-list '(m))
(cl:defmethod air_y-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:air_y-val is deprecated.  Use rm_msgs-msg:air_y instead.")
  (air_y m))

(cl:ensure-generic-function 'sentry_x-val :lambda-list '(m))
(cl:defmethod sentry_x-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_x-val is deprecated.  Use rm_msgs-msg:sentry_x instead.")
  (sentry_x m))

(cl:ensure-generic-function 'sentry_y-val :lambda-list '(m))
(cl:defmethod sentry_y-val ((m <RadarEnemyPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_y-val is deprecated.  Use rm_msgs-msg:sentry_y instead.")
  (sentry_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarEnemyPosition>) ostream)
  "Serializes a message object of type '<RadarEnemyPosition>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hero_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hero_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engineer_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engineer_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_3_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_3_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_4_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_4_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'air_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'air_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sentry_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sentry_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarEnemyPosition>) istream)
  "Deserializes a message object of type '<RadarEnemyPosition>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hero_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hero_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engineer_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engineer_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_3_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_3_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_4_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_4_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'air_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'air_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sentry_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sentry_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarEnemyPosition>)))
  "Returns string type for a message object of type '<RadarEnemyPosition>"
  "rm_msgs/RadarEnemyPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarEnemyPosition)))
  "Returns string type for a message object of type 'RadarEnemyPosition"
  "rm_msgs/RadarEnemyPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarEnemyPosition>)))
  "Returns md5sum for a message object of type '<RadarEnemyPosition>"
  "4ff9750e658ae1214e4c1775e4bd4a0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarEnemyPosition)))
  "Returns md5sum for a message object of type 'RadarEnemyPosition"
  "4ff9750e658ae1214e4c1775e4bd4a0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarEnemyPosition>)))
  "Returns full string definition for message of type '<RadarEnemyPosition>"
  (cl:format cl:nil "float32 hero_x~%float32 hero_y~%float32 engineer_x~%float32 engineer_y~%float32 standard_3_x~%float32 standard_3_y~%float32 standard_4_x~%float32 standard_4_y~%float32 air_x~%float32 air_y~%float32 sentry_x~%float32 sentry_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarEnemyPosition)))
  "Returns full string definition for message of type 'RadarEnemyPosition"
  (cl:format cl:nil "float32 hero_x~%float32 hero_y~%float32 engineer_x~%float32 engineer_y~%float32 standard_3_x~%float32 standard_3_y~%float32 standard_4_x~%float32 standard_4_y~%float32 air_x~%float32 air_y~%float32 sentry_x~%float32 sentry_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarEnemyPosition>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarEnemyPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarEnemyPosition
    (cl:cons ':hero_x (hero_x msg))
    (cl:cons ':hero_y (hero_y msg))
    (cl:cons ':engineer_x (engineer_x msg))
    (cl:cons ':engineer_y (engineer_y msg))
    (cl:cons ':standard_3_x (standard_3_x msg))
    (cl:cons ':standard_3_y (standard_3_y msg))
    (cl:cons ':standard_4_x (standard_4_x msg))
    (cl:cons ':standard_4_y (standard_4_y msg))
    (cl:cons ':air_x (air_x msg))
    (cl:cons ':air_y (air_y msg))
    (cl:cons ':sentry_x (sentry_x msg))
    (cl:cons ':sentry_y (sentry_y msg))
))
