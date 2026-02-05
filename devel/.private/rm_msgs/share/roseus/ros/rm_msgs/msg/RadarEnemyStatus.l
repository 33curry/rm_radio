;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarEnemyStatus)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarEnemyStatus (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARENEMYSTATUS")
  (make-package "RM_MSGS::RADARENEMYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RadarEnemyStatus.msg.html


(defclass rm_msgs::RadarEnemyStatus
  :super ros::object
  :slots (_remainder_coin _total_coin _status_bitmask _enemy_assembly _enemy_ring_highland _enemy_trapezoidal_highland _enemy_fort _enemy_outpost _enemy_base_buff _enemy_flying_slope_pre _enemy_flying_slope_post _enemy_highway_tunnel_l _enemy_highway_tunnel_h _enemy_central_high _enemy_central_low _enemy_highway_high ))

(defmethod rm_msgs::RadarEnemyStatus
  (:init
   (&key
    ((:remainder_coin __remainder_coin) 0)
    ((:total_coin __total_coin) 0)
    ((:status_bitmask __status_bitmask) 0)
    ((:enemy_assembly __enemy_assembly) nil)
    ((:enemy_ring_highland __enemy_ring_highland) nil)
    ((:enemy_trapezoidal_highland __enemy_trapezoidal_highland) nil)
    ((:enemy_fort __enemy_fort) nil)
    ((:enemy_outpost __enemy_outpost) nil)
    ((:enemy_base_buff __enemy_base_buff) nil)
    ((:enemy_flying_slope_pre __enemy_flying_slope_pre) nil)
    ((:enemy_flying_slope_post __enemy_flying_slope_post) nil)
    ((:enemy_highway_tunnel_l __enemy_highway_tunnel_l) nil)
    ((:enemy_highway_tunnel_h __enemy_highway_tunnel_h) nil)
    ((:enemy_central_high __enemy_central_high) nil)
    ((:enemy_central_low __enemy_central_low) nil)
    ((:enemy_highway_high __enemy_highway_high) nil)
    )
   (send-super :init)
   (setq _remainder_coin (round __remainder_coin))
   (setq _total_coin (round __total_coin))
   (setq _status_bitmask (round __status_bitmask))
   (setq _enemy_assembly __enemy_assembly)
   (setq _enemy_ring_highland __enemy_ring_highland)
   (setq _enemy_trapezoidal_highland __enemy_trapezoidal_highland)
   (setq _enemy_fort __enemy_fort)
   (setq _enemy_outpost __enemy_outpost)
   (setq _enemy_base_buff __enemy_base_buff)
   (setq _enemy_flying_slope_pre __enemy_flying_slope_pre)
   (setq _enemy_flying_slope_post __enemy_flying_slope_post)
   (setq _enemy_highway_tunnel_l __enemy_highway_tunnel_l)
   (setq _enemy_highway_tunnel_h __enemy_highway_tunnel_h)
   (setq _enemy_central_high __enemy_central_high)
   (setq _enemy_central_low __enemy_central_low)
   (setq _enemy_highway_high __enemy_highway_high)
   self)
  (:remainder_coin
   (&optional __remainder_coin)
   (if __remainder_coin (setq _remainder_coin __remainder_coin)) _remainder_coin)
  (:total_coin
   (&optional __total_coin)
   (if __total_coin (setq _total_coin __total_coin)) _total_coin)
  (:status_bitmask
   (&optional __status_bitmask)
   (if __status_bitmask (setq _status_bitmask __status_bitmask)) _status_bitmask)
  (:enemy_assembly
   (&optional (__enemy_assembly :null))
   (if (not (eq __enemy_assembly :null)) (setq _enemy_assembly __enemy_assembly)) _enemy_assembly)
  (:enemy_ring_highland
   (&optional (__enemy_ring_highland :null))
   (if (not (eq __enemy_ring_highland :null)) (setq _enemy_ring_highland __enemy_ring_highland)) _enemy_ring_highland)
  (:enemy_trapezoidal_highland
   (&optional (__enemy_trapezoidal_highland :null))
   (if (not (eq __enemy_trapezoidal_highland :null)) (setq _enemy_trapezoidal_highland __enemy_trapezoidal_highland)) _enemy_trapezoidal_highland)
  (:enemy_fort
   (&optional (__enemy_fort :null))
   (if (not (eq __enemy_fort :null)) (setq _enemy_fort __enemy_fort)) _enemy_fort)
  (:enemy_outpost
   (&optional (__enemy_outpost :null))
   (if (not (eq __enemy_outpost :null)) (setq _enemy_outpost __enemy_outpost)) _enemy_outpost)
  (:enemy_base_buff
   (&optional (__enemy_base_buff :null))
   (if (not (eq __enemy_base_buff :null)) (setq _enemy_base_buff __enemy_base_buff)) _enemy_base_buff)
  (:enemy_flying_slope_pre
   (&optional (__enemy_flying_slope_pre :null))
   (if (not (eq __enemy_flying_slope_pre :null)) (setq _enemy_flying_slope_pre __enemy_flying_slope_pre)) _enemy_flying_slope_pre)
  (:enemy_flying_slope_post
   (&optional (__enemy_flying_slope_post :null))
   (if (not (eq __enemy_flying_slope_post :null)) (setq _enemy_flying_slope_post __enemy_flying_slope_post)) _enemy_flying_slope_post)
  (:enemy_highway_tunnel_l
   (&optional (__enemy_highway_tunnel_l :null))
   (if (not (eq __enemy_highway_tunnel_l :null)) (setq _enemy_highway_tunnel_l __enemy_highway_tunnel_l)) _enemy_highway_tunnel_l)
  (:enemy_highway_tunnel_h
   (&optional (__enemy_highway_tunnel_h :null))
   (if (not (eq __enemy_highway_tunnel_h :null)) (setq _enemy_highway_tunnel_h __enemy_highway_tunnel_h)) _enemy_highway_tunnel_h)
  (:enemy_central_high
   (&optional (__enemy_central_high :null))
   (if (not (eq __enemy_central_high :null)) (setq _enemy_central_high __enemy_central_high)) _enemy_central_high)
  (:enemy_central_low
   (&optional (__enemy_central_low :null))
   (if (not (eq __enemy_central_low :null)) (setq _enemy_central_low __enemy_central_low)) _enemy_central_low)
  (:enemy_highway_high
   (&optional (__enemy_highway_high :null))
   (if (not (eq __enemy_highway_high :null)) (setq _enemy_highway_high __enemy_highway_high)) _enemy_highway_high)
  (:serialization-length
   ()
   (+
    ;; uint16 _remainder_coin
    2
    ;; uint16 _total_coin
    2
    ;; uint32 _status_bitmask
    4
    ;; bool _enemy_assembly
    1
    ;; bool _enemy_ring_highland
    1
    ;; bool _enemy_trapezoidal_highland
    1
    ;; bool _enemy_fort
    1
    ;; bool _enemy_outpost
    1
    ;; bool _enemy_base_buff
    1
    ;; bool _enemy_flying_slope_pre
    1
    ;; bool _enemy_flying_slope_post
    1
    ;; bool _enemy_highway_tunnel_l
    1
    ;; bool _enemy_highway_tunnel_h
    1
    ;; bool _enemy_central_high
    1
    ;; bool _enemy_central_low
    1
    ;; bool _enemy_highway_high
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _remainder_coin
       (write-word _remainder_coin s)
     ;; uint16 _total_coin
       (write-word _total_coin s)
     ;; uint32 _status_bitmask
       (write-long _status_bitmask s)
     ;; bool _enemy_assembly
       (if _enemy_assembly (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_ring_highland
       (if _enemy_ring_highland (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_trapezoidal_highland
       (if _enemy_trapezoidal_highland (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_fort
       (if _enemy_fort (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_outpost
       (if _enemy_outpost (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_base_buff
       (if _enemy_base_buff (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_flying_slope_pre
       (if _enemy_flying_slope_pre (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_flying_slope_post
       (if _enemy_flying_slope_post (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_highway_tunnel_l
       (if _enemy_highway_tunnel_l (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_highway_tunnel_h
       (if _enemy_highway_tunnel_h (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_central_high
       (if _enemy_central_high (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_central_low
       (if _enemy_central_low (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_highway_high
       (if _enemy_highway_high (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _remainder_coin
     (setq _remainder_coin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _total_coin
     (setq _total_coin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _status_bitmask
     (setq _status_bitmask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _enemy_assembly
     (setq _enemy_assembly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_ring_highland
     (setq _enemy_ring_highland (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_trapezoidal_highland
     (setq _enemy_trapezoidal_highland (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_fort
     (setq _enemy_fort (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_outpost
     (setq _enemy_outpost (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_base_buff
     (setq _enemy_base_buff (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_flying_slope_pre
     (setq _enemy_flying_slope_pre (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_flying_slope_post
     (setq _enemy_flying_slope_post (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_highway_tunnel_l
     (setq _enemy_highway_tunnel_l (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_highway_tunnel_h
     (setq _enemy_highway_tunnel_h (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_central_high
     (setq _enemy_central_high (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_central_low
     (setq _enemy_central_low (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_highway_high
     (setq _enemy_highway_high (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::RadarEnemyStatus :md5sum-) "392f33a234e14207b0df7f118c14e256")
(setf (get rm_msgs::RadarEnemyStatus :datatype-) "rm_msgs/RadarEnemyStatus")
(setf (get rm_msgs::RadarEnemyStatus :definition-)
      "uint16 remainder_coin
uint16 total_coin
uint32 status_bitmask

# Bit interpretation (True if occupied by enemy/active for enemy)
# Bit 0
bool enemy_assembly
# Bit 1-2
bool enemy_ring_highland
# Bit 3
bool enemy_trapezoidal_highland
# Bit 4-5
bool enemy_fort
# Bit 6-7
bool enemy_outpost
# Bit 8 (Base Buff Point)
bool enemy_base_buff
# Bit 9 (Flying Slope Pre)
bool enemy_flying_slope_pre
# Bit 10 (Flying Slope Post)
bool enemy_flying_slope_post
# Bit 11 (Highway/Tunnel L?)
bool enemy_highway_tunnel_l
# Bit 12 (Highway/Tunnel H?)
bool enemy_highway_tunnel_h
# Bit 13 (Highland High)
bool enemy_central_high
# Bit 14 (Highland Fly?)
bool enemy_central_low
# Bit 15 (Highland Road)
bool enemy_highway_high



")



(provide :rm_msgs/RadarEnemyStatus "392f33a234e14207b0df7f118c14e256")


