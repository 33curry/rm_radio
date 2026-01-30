; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude SentryInfo.msg.html

(cl:defclass <SentryInfo> (roslisp-msg-protocol:ros-message)
  ((sentry_info
    :reader sentry_info
    :initarg :sentry_info
    :type cl:integer
    :initform 0)
   (sentry_mode
    :reader sentry_mode
    :initarg :sentry_mode
    :type cl:fixnum
    :initform 0)
   (power_trigger_state
    :reader power_trigger_state
    :initarg :power_trigger_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SentryInfo (<SentryInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<SentryInfo> is deprecated: use rm_msgs-msg:SentryInfo instead.")))

(cl:ensure-generic-function 'sentry_info-val :lambda-list '(m))
(cl:defmethod sentry_info-val ((m <SentryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_info-val is deprecated.  Use rm_msgs-msg:sentry_info instead.")
  (sentry_info m))

(cl:ensure-generic-function 'sentry_mode-val :lambda-list '(m))
(cl:defmethod sentry_mode-val ((m <SentryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_mode-val is deprecated.  Use rm_msgs-msg:sentry_mode instead.")
  (sentry_mode m))

(cl:ensure-generic-function 'power_trigger_state-val :lambda-list '(m))
(cl:defmethod power_trigger_state-val ((m <SentryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:power_trigger_state-val is deprecated.  Use rm_msgs-msg:power_trigger_state instead.")
  (power_trigger_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryInfo>) ostream)
  "Serializes a message object of type '<SentryInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'power_trigger_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryInfo>) istream)
  "Deserializes a message object of type '<SentryInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power_trigger_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryInfo>)))
  "Returns string type for a message object of type '<SentryInfo>"
  "rm_msgs/SentryInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryInfo)))
  "Returns string type for a message object of type 'SentryInfo"
  "rm_msgs/SentryInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryInfo>)))
  "Returns md5sum for a message object of type '<SentryInfo>"
  "3a02e3f6914e023272819ae56a1fdd13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryInfo)))
  "Returns md5sum for a message object of type 'SentryInfo"
  "3a02e3f6914e023272819ae56a1fdd13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryInfo>)))
  "Returns full string definition for message of type '<SentryInfo>"
  (cl:format cl:nil "uint32 sentry_info~%uint8 sentry_mode~%bool power_trigger_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryInfo)))
  "Returns full string definition for message of type 'SentryInfo"
  (cl:format cl:nil "uint32 sentry_info~%uint8 sentry_mode~%bool power_trigger_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryInfo>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryInfo
    (cl:cons ':sentry_info (sentry_info msg))
    (cl:cons ':sentry_mode (sentry_mode msg))
    (cl:cons ':power_trigger_state (power_trigger_state msg))
))
