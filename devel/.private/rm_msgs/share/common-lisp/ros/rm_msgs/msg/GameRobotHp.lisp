; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude GameRobotHp.msg.html

(cl:defclass <GameRobotHp> (roslisp-msg-protocol:ros-message)
  ((ally_1_robot_HP
    :reader ally_1_robot_HP
    :initarg :ally_1_robot_HP
    :type cl:fixnum
    :initform 0)
   (ally_2_robot_HP
    :reader ally_2_robot_HP
    :initarg :ally_2_robot_HP
    :type cl:fixnum
    :initform 0)
   (ally_3_robot_HP
    :reader ally_3_robot_HP
    :initarg :ally_3_robot_HP
    :type cl:fixnum
    :initform 0)
   (ally_4_robot_HP
    :reader ally_4_robot_HP
    :initarg :ally_4_robot_HP
    :type cl:fixnum
    :initform 0)
   (ally_7_robot_HP
    :reader ally_7_robot_HP
    :initarg :ally_7_robot_HP
    :type cl:fixnum
    :initform 0)
   (ally_outpost_HP
    :reader ally_outpost_HP
    :initarg :ally_outpost_HP
    :type cl:fixnum
    :initform 0)
   (ally_base_HP
    :reader ally_base_HP
    :initarg :ally_base_HP
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass GameRobotHp (<GameRobotHp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameRobotHp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameRobotHp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<GameRobotHp> is deprecated: use rm_msgs-msg:GameRobotHp instead.")))

(cl:ensure-generic-function 'ally_1_robot_HP-val :lambda-list '(m))
(cl:defmethod ally_1_robot_HP-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ally_1_robot_HP-val is deprecated.  Use rm_msgs-msg:ally_1_robot_HP instead.")
  (ally_1_robot_HP m))

(cl:ensure-generic-function 'ally_2_robot_HP-val :lambda-list '(m))
(cl:defmethod ally_2_robot_HP-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ally_2_robot_HP-val is deprecated.  Use rm_msgs-msg:ally_2_robot_HP instead.")
  (ally_2_robot_HP m))

(cl:ensure-generic-function 'ally_3_robot_HP-val :lambda-list '(m))
(cl:defmethod ally_3_robot_HP-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ally_3_robot_HP-val is deprecated.  Use rm_msgs-msg:ally_3_robot_HP instead.")
  (ally_3_robot_HP m))

(cl:ensure-generic-function 'ally_4_robot_HP-val :lambda-list '(m))
(cl:defmethod ally_4_robot_HP-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ally_4_robot_HP-val is deprecated.  Use rm_msgs-msg:ally_4_robot_HP instead.")
  (ally_4_robot_HP m))

(cl:ensure-generic-function 'ally_7_robot_HP-val :lambda-list '(m))
(cl:defmethod ally_7_robot_HP-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ally_7_robot_HP-val is deprecated.  Use rm_msgs-msg:ally_7_robot_HP instead.")
  (ally_7_robot_HP m))

(cl:ensure-generic-function 'ally_outpost_HP-val :lambda-list '(m))
(cl:defmethod ally_outpost_HP-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ally_outpost_HP-val is deprecated.  Use rm_msgs-msg:ally_outpost_HP instead.")
  (ally_outpost_HP m))

(cl:ensure-generic-function 'ally_base_HP-val :lambda-list '(m))
(cl:defmethod ally_base_HP-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ally_base_HP-val is deprecated.  Use rm_msgs-msg:ally_base_HP instead.")
  (ally_base_HP m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameRobotHp>) ostream)
  "Serializes a message object of type '<GameRobotHp>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_1_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_1_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_2_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_2_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_3_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_3_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_4_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_4_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_7_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_7_robot_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_outpost_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_outpost_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_base_HP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_base_HP)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameRobotHp>) istream)
  "Deserializes a message object of type '<GameRobotHp>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_1_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_1_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_2_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_2_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_3_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_3_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_4_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_4_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_7_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_7_robot_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_outpost_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_outpost_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ally_base_HP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ally_base_HP)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameRobotHp>)))
  "Returns string type for a message object of type '<GameRobotHp>"
  "rm_msgs/GameRobotHp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameRobotHp)))
  "Returns string type for a message object of type 'GameRobotHp"
  "rm_msgs/GameRobotHp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameRobotHp>)))
  "Returns md5sum for a message object of type '<GameRobotHp>"
  "3b8c1902e96ad7c67b46c3d5637af066")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameRobotHp)))
  "Returns md5sum for a message object of type 'GameRobotHp"
  "3b8c1902e96ad7c67b46c3d5637af066")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameRobotHp>)))
  "Returns full string definition for message of type '<GameRobotHp>"
  (cl:format cl:nil "uint16 ally_1_robot_HP~%uint16 ally_2_robot_HP~%uint16 ally_3_robot_HP~%uint16 ally_4_robot_HP~%uint16 ally_7_robot_HP~%uint16 ally_outpost_HP~%uint16 ally_base_HP~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameRobotHp)))
  "Returns full string definition for message of type 'GameRobotHp"
  (cl:format cl:nil "uint16 ally_1_robot_HP~%uint16 ally_2_robot_HP~%uint16 ally_3_robot_HP~%uint16 ally_4_robot_HP~%uint16 ally_7_robot_HP~%uint16 ally_outpost_HP~%uint16 ally_base_HP~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameRobotHp>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameRobotHp>))
  "Converts a ROS message object to a list"
  (cl:list 'GameRobotHp
    (cl:cons ':ally_1_robot_HP (ally_1_robot_HP msg))
    (cl:cons ':ally_2_robot_HP (ally_2_robot_HP msg))
    (cl:cons ':ally_3_robot_HP (ally_3_robot_HP msg))
    (cl:cons ':ally_4_robot_HP (ally_4_robot_HP msg))
    (cl:cons ':ally_7_robot_HP (ally_7_robot_HP msg))
    (cl:cons ':ally_outpost_HP (ally_outpost_HP msg))
    (cl:cons ':ally_base_HP (ally_base_HP msg))
    (cl:cons ':stamp (stamp msg))
))
