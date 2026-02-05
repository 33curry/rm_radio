; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarEnemyStatus.msg.html

(cl:defclass <RadarEnemyStatus> (roslisp-msg-protocol:ros-message)
  ((remainder_coin
    :reader remainder_coin
    :initarg :remainder_coin
    :type cl:fixnum
    :initform 0)
   (total_coin
    :reader total_coin
    :initarg :total_coin
    :type cl:fixnum
    :initform 0)
   (status_bitmask
    :reader status_bitmask
    :initarg :status_bitmask
    :type cl:integer
    :initform 0)
   (enemy_assembly
    :reader enemy_assembly
    :initarg :enemy_assembly
    :type cl:boolean
    :initform cl:nil)
   (enemy_ring_highland
    :reader enemy_ring_highland
    :initarg :enemy_ring_highland
    :type cl:boolean
    :initform cl:nil)
   (enemy_trapezoidal_highland
    :reader enemy_trapezoidal_highland
    :initarg :enemy_trapezoidal_highland
    :type cl:boolean
    :initform cl:nil)
   (enemy_fort
    :reader enemy_fort
    :initarg :enemy_fort
    :type cl:boolean
    :initform cl:nil)
   (enemy_outpost
    :reader enemy_outpost
    :initarg :enemy_outpost
    :type cl:boolean
    :initform cl:nil)
   (enemy_base_buff
    :reader enemy_base_buff
    :initarg :enemy_base_buff
    :type cl:boolean
    :initform cl:nil)
   (enemy_flying_slope_pre
    :reader enemy_flying_slope_pre
    :initarg :enemy_flying_slope_pre
    :type cl:boolean
    :initform cl:nil)
   (enemy_flying_slope_post
    :reader enemy_flying_slope_post
    :initarg :enemy_flying_slope_post
    :type cl:boolean
    :initform cl:nil)
   (enemy_highway_tunnel_l
    :reader enemy_highway_tunnel_l
    :initarg :enemy_highway_tunnel_l
    :type cl:boolean
    :initform cl:nil)
   (enemy_highway_tunnel_h
    :reader enemy_highway_tunnel_h
    :initarg :enemy_highway_tunnel_h
    :type cl:boolean
    :initform cl:nil)
   (enemy_central_high
    :reader enemy_central_high
    :initarg :enemy_central_high
    :type cl:boolean
    :initform cl:nil)
   (enemy_central_low
    :reader enemy_central_low
    :initarg :enemy_central_low
    :type cl:boolean
    :initform cl:nil)
   (enemy_highway_high
    :reader enemy_highway_high
    :initarg :enemy_highway_high
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RadarEnemyStatus (<RadarEnemyStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarEnemyStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarEnemyStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarEnemyStatus> is deprecated: use rm_msgs-msg:RadarEnemyStatus instead.")))

(cl:ensure-generic-function 'remainder_coin-val :lambda-list '(m))
(cl:defmethod remainder_coin-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:remainder_coin-val is deprecated.  Use rm_msgs-msg:remainder_coin instead.")
  (remainder_coin m))

(cl:ensure-generic-function 'total_coin-val :lambda-list '(m))
(cl:defmethod total_coin-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:total_coin-val is deprecated.  Use rm_msgs-msg:total_coin instead.")
  (total_coin m))

(cl:ensure-generic-function 'status_bitmask-val :lambda-list '(m))
(cl:defmethod status_bitmask-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:status_bitmask-val is deprecated.  Use rm_msgs-msg:status_bitmask instead.")
  (status_bitmask m))

(cl:ensure-generic-function 'enemy_assembly-val :lambda-list '(m))
(cl:defmethod enemy_assembly-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_assembly-val is deprecated.  Use rm_msgs-msg:enemy_assembly instead.")
  (enemy_assembly m))

(cl:ensure-generic-function 'enemy_ring_highland-val :lambda-list '(m))
(cl:defmethod enemy_ring_highland-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_ring_highland-val is deprecated.  Use rm_msgs-msg:enemy_ring_highland instead.")
  (enemy_ring_highland m))

(cl:ensure-generic-function 'enemy_trapezoidal_highland-val :lambda-list '(m))
(cl:defmethod enemy_trapezoidal_highland-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_trapezoidal_highland-val is deprecated.  Use rm_msgs-msg:enemy_trapezoidal_highland instead.")
  (enemy_trapezoidal_highland m))

(cl:ensure-generic-function 'enemy_fort-val :lambda-list '(m))
(cl:defmethod enemy_fort-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_fort-val is deprecated.  Use rm_msgs-msg:enemy_fort instead.")
  (enemy_fort m))

(cl:ensure-generic-function 'enemy_outpost-val :lambda-list '(m))
(cl:defmethod enemy_outpost-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_outpost-val is deprecated.  Use rm_msgs-msg:enemy_outpost instead.")
  (enemy_outpost m))

(cl:ensure-generic-function 'enemy_base_buff-val :lambda-list '(m))
(cl:defmethod enemy_base_buff-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_base_buff-val is deprecated.  Use rm_msgs-msg:enemy_base_buff instead.")
  (enemy_base_buff m))

(cl:ensure-generic-function 'enemy_flying_slope_pre-val :lambda-list '(m))
(cl:defmethod enemy_flying_slope_pre-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_flying_slope_pre-val is deprecated.  Use rm_msgs-msg:enemy_flying_slope_pre instead.")
  (enemy_flying_slope_pre m))

(cl:ensure-generic-function 'enemy_flying_slope_post-val :lambda-list '(m))
(cl:defmethod enemy_flying_slope_post-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_flying_slope_post-val is deprecated.  Use rm_msgs-msg:enemy_flying_slope_post instead.")
  (enemy_flying_slope_post m))

(cl:ensure-generic-function 'enemy_highway_tunnel_l-val :lambda-list '(m))
(cl:defmethod enemy_highway_tunnel_l-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_highway_tunnel_l-val is deprecated.  Use rm_msgs-msg:enemy_highway_tunnel_l instead.")
  (enemy_highway_tunnel_l m))

(cl:ensure-generic-function 'enemy_highway_tunnel_h-val :lambda-list '(m))
(cl:defmethod enemy_highway_tunnel_h-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_highway_tunnel_h-val is deprecated.  Use rm_msgs-msg:enemy_highway_tunnel_h instead.")
  (enemy_highway_tunnel_h m))

(cl:ensure-generic-function 'enemy_central_high-val :lambda-list '(m))
(cl:defmethod enemy_central_high-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_central_high-val is deprecated.  Use rm_msgs-msg:enemy_central_high instead.")
  (enemy_central_high m))

(cl:ensure-generic-function 'enemy_central_low-val :lambda-list '(m))
(cl:defmethod enemy_central_low-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_central_low-val is deprecated.  Use rm_msgs-msg:enemy_central_low instead.")
  (enemy_central_low m))

(cl:ensure-generic-function 'enemy_highway_high-val :lambda-list '(m))
(cl:defmethod enemy_highway_high-val ((m <RadarEnemyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_highway_high-val is deprecated.  Use rm_msgs-msg:enemy_highway_high instead.")
  (enemy_highway_high m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarEnemyStatus>) ostream)
  "Serializes a message object of type '<RadarEnemyStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remainder_coin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remainder_coin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_coin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_coin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_bitmask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_bitmask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_bitmask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_bitmask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_assembly) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_ring_highland) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_trapezoidal_highland) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_fort) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_outpost) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_base_buff) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_flying_slope_pre) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_flying_slope_post) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_highway_tunnel_l) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_highway_tunnel_h) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_central_high) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_central_low) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_highway_high) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarEnemyStatus>) istream)
  "Deserializes a message object of type '<RadarEnemyStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remainder_coin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remainder_coin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_coin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_coin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_bitmask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_bitmask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_bitmask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_bitmask)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enemy_assembly) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_ring_highland) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_trapezoidal_highland) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_fort) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_outpost) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_base_buff) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_flying_slope_pre) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_flying_slope_post) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_highway_tunnel_l) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_highway_tunnel_h) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_central_high) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_central_low) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_highway_high) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarEnemyStatus>)))
  "Returns string type for a message object of type '<RadarEnemyStatus>"
  "rm_msgs/RadarEnemyStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarEnemyStatus)))
  "Returns string type for a message object of type 'RadarEnemyStatus"
  "rm_msgs/RadarEnemyStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarEnemyStatus>)))
  "Returns md5sum for a message object of type '<RadarEnemyStatus>"
  "392f33a234e14207b0df7f118c14e256")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarEnemyStatus)))
  "Returns md5sum for a message object of type 'RadarEnemyStatus"
  "392f33a234e14207b0df7f118c14e256")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarEnemyStatus>)))
  "Returns full string definition for message of type '<RadarEnemyStatus>"
  (cl:format cl:nil "uint16 remainder_coin~%uint16 total_coin~%uint32 status_bitmask~%~%# Bit interpretation (True if occupied by enemy/active for enemy)~%# Bit 0~%bool enemy_assembly~%# Bit 1-2~%bool enemy_ring_highland~%# Bit 3~%bool enemy_trapezoidal_highland~%# Bit 4-5~%bool enemy_fort~%# Bit 6-7~%bool enemy_outpost~%# Bit 8 (Base Buff Point)~%bool enemy_base_buff~%# Bit 9 (Flying Slope Pre)~%bool enemy_flying_slope_pre~%# Bit 10 (Flying Slope Post)~%bool enemy_flying_slope_post~%# Bit 11 (Highway/Tunnel L?)~%bool enemy_highway_tunnel_l~%# Bit 12 (Highway/Tunnel H?)~%bool enemy_highway_tunnel_h~%# Bit 13 (Highland High)~%bool enemy_central_high~%# Bit 14 (Highland Fly?)~%bool enemy_central_low~%# Bit 15 (Highland Road)~%bool enemy_highway_high~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarEnemyStatus)))
  "Returns full string definition for message of type 'RadarEnemyStatus"
  (cl:format cl:nil "uint16 remainder_coin~%uint16 total_coin~%uint32 status_bitmask~%~%# Bit interpretation (True if occupied by enemy/active for enemy)~%# Bit 0~%bool enemy_assembly~%# Bit 1-2~%bool enemy_ring_highland~%# Bit 3~%bool enemy_trapezoidal_highland~%# Bit 4-5~%bool enemy_fort~%# Bit 6-7~%bool enemy_outpost~%# Bit 8 (Base Buff Point)~%bool enemy_base_buff~%# Bit 9 (Flying Slope Pre)~%bool enemy_flying_slope_pre~%# Bit 10 (Flying Slope Post)~%bool enemy_flying_slope_post~%# Bit 11 (Highway/Tunnel L?)~%bool enemy_highway_tunnel_l~%# Bit 12 (Highway/Tunnel H?)~%bool enemy_highway_tunnel_h~%# Bit 13 (Highland High)~%bool enemy_central_high~%# Bit 14 (Highland Fly?)~%bool enemy_central_low~%# Bit 15 (Highland Road)~%bool enemy_highway_high~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarEnemyStatus>))
  (cl:+ 0
     2
     2
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarEnemyStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarEnemyStatus
    (cl:cons ':remainder_coin (remainder_coin msg))
    (cl:cons ':total_coin (total_coin msg))
    (cl:cons ':status_bitmask (status_bitmask msg))
    (cl:cons ':enemy_assembly (enemy_assembly msg))
    (cl:cons ':enemy_ring_highland (enemy_ring_highland msg))
    (cl:cons ':enemy_trapezoidal_highland (enemy_trapezoidal_highland msg))
    (cl:cons ':enemy_fort (enemy_fort msg))
    (cl:cons ':enemy_outpost (enemy_outpost msg))
    (cl:cons ':enemy_base_buff (enemy_base_buff msg))
    (cl:cons ':enemy_flying_slope_pre (enemy_flying_slope_pre msg))
    (cl:cons ':enemy_flying_slope_post (enemy_flying_slope_post msg))
    (cl:cons ':enemy_highway_tunnel_l (enemy_highway_tunnel_l msg))
    (cl:cons ':enemy_highway_tunnel_h (enemy_highway_tunnel_h msg))
    (cl:cons ':enemy_central_high (enemy_central_high msg))
    (cl:cons ':enemy_central_low (enemy_central_low msg))
    (cl:cons ':enemy_highway_high (enemy_highway_high msg))
))
