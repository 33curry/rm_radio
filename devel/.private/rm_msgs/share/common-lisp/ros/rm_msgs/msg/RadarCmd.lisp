; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarCmd.msg.html

(cl:defclass <RadarCmd> (roslisp-msg-protocol:ros-message)
  ((radar_cmd
    :reader radar_cmd
    :initarg :radar_cmd
    :type cl:fixnum
    :initform 0)
   (password_cmd
    :reader password_cmd
    :initarg :password_cmd
    :type cl:fixnum
    :initform 0)
   (password_1
    :reader password_1
    :initarg :password_1
    :type cl:fixnum
    :initform 0)
   (password_2
    :reader password_2
    :initarg :password_2
    :type cl:fixnum
    :initform 0)
   (password_3
    :reader password_3
    :initarg :password_3
    :type cl:fixnum
    :initform 0)
   (password_4
    :reader password_4
    :initarg :password_4
    :type cl:fixnum
    :initform 0)
   (password_5
    :reader password_5
    :initarg :password_5
    :type cl:fixnum
    :initform 0)
   (password_6
    :reader password_6
    :initarg :password_6
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarCmd (<RadarCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarCmd> is deprecated: use rm_msgs-msg:RadarCmd instead.")))

(cl:ensure-generic-function 'radar_cmd-val :lambda-list '(m))
(cl:defmethod radar_cmd-val ((m <RadarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:radar_cmd-val is deprecated.  Use rm_msgs-msg:radar_cmd instead.")
  (radar_cmd m))

(cl:ensure-generic-function 'password_cmd-val :lambda-list '(m))
(cl:defmethod password_cmd-val ((m <RadarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:password_cmd-val is deprecated.  Use rm_msgs-msg:password_cmd instead.")
  (password_cmd m))

(cl:ensure-generic-function 'password_1-val :lambda-list '(m))
(cl:defmethod password_1-val ((m <RadarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:password_1-val is deprecated.  Use rm_msgs-msg:password_1 instead.")
  (password_1 m))

(cl:ensure-generic-function 'password_2-val :lambda-list '(m))
(cl:defmethod password_2-val ((m <RadarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:password_2-val is deprecated.  Use rm_msgs-msg:password_2 instead.")
  (password_2 m))

(cl:ensure-generic-function 'password_3-val :lambda-list '(m))
(cl:defmethod password_3-val ((m <RadarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:password_3-val is deprecated.  Use rm_msgs-msg:password_3 instead.")
  (password_3 m))

(cl:ensure-generic-function 'password_4-val :lambda-list '(m))
(cl:defmethod password_4-val ((m <RadarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:password_4-val is deprecated.  Use rm_msgs-msg:password_4 instead.")
  (password_4 m))

(cl:ensure-generic-function 'password_5-val :lambda-list '(m))
(cl:defmethod password_5-val ((m <RadarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:password_5-val is deprecated.  Use rm_msgs-msg:password_5 instead.")
  (password_5 m))

(cl:ensure-generic-function 'password_6-val :lambda-list '(m))
(cl:defmethod password_6-val ((m <RadarCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:password_6-val is deprecated.  Use rm_msgs-msg:password_6 instead.")
  (password_6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarCmd>) ostream)
  "Serializes a message object of type '<RadarCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_6)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarCmd>) istream)
  "Deserializes a message object of type '<RadarCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'password_6)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarCmd>)))
  "Returns string type for a message object of type '<RadarCmd>"
  "rm_msgs/RadarCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarCmd)))
  "Returns string type for a message object of type 'RadarCmd"
  "rm_msgs/RadarCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarCmd>)))
  "Returns md5sum for a message object of type '<RadarCmd>"
  "b64c898bf6d85c43411778433c0cde0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarCmd)))
  "Returns md5sum for a message object of type 'RadarCmd"
  "b64c898bf6d85c43411778433c0cde0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarCmd>)))
  "Returns full string definition for message of type '<RadarCmd>"
  (cl:format cl:nil "uint8 radar_cmd~%uint8 password_cmd~%uint8 password_1~%uint8 password_2~%uint8 password_3~%uint8 password_4~%uint8 password_5~%uint8 password_6~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarCmd)))
  "Returns full string definition for message of type 'RadarCmd"
  (cl:format cl:nil "uint8 radar_cmd~%uint8 password_cmd~%uint8 password_1~%uint8 password_2~%uint8 password_3~%uint8 password_4~%uint8 password_5~%uint8 password_6~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarCmd>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarCmd
    (cl:cons ':radar_cmd (radar_cmd msg))
    (cl:cons ':password_cmd (password_cmd msg))
    (cl:cons ':password_1 (password_1 msg))
    (cl:cons ':password_2 (password_2 msg))
    (cl:cons ':password_3 (password_3 msg))
    (cl:cons ':password_4 (password_4 msg))
    (cl:cons ':password_5 (password_5 msg))
    (cl:cons ':password_6 (password_6 msg))
))
