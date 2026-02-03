;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarRobotBuff)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarRobotBuff (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARROBOTBUFF")
  (make-package "RM_MSGS::RADARROBOTBUFF"))

(in-package "ROS")
;;//! \htmlinclude RadarRobotBuff.msg.html


(defclass rm_msgs::RadarRobotBuff
  :super ros::object
  :slots (_recovery_percent _cooling_buff _def_buff _neg_def_buff _attack_buff ))

(defmethod rm_msgs::RadarRobotBuff
  (:init
   (&key
    ((:recovery_percent __recovery_percent) 0)
    ((:cooling_buff __cooling_buff) 0)
    ((:def_buff __def_buff) 0)
    ((:neg_def_buff __neg_def_buff) 0)
    ((:attack_buff __attack_buff) 0)
    )
   (send-super :init)
   (setq _recovery_percent (round __recovery_percent))
   (setq _cooling_buff (round __cooling_buff))
   (setq _def_buff (round __def_buff))
   (setq _neg_def_buff (round __neg_def_buff))
   (setq _attack_buff (round __attack_buff))
   self)
  (:recovery_percent
   (&optional __recovery_percent)
   (if __recovery_percent (setq _recovery_percent __recovery_percent)) _recovery_percent)
  (:cooling_buff
   (&optional __cooling_buff)
   (if __cooling_buff (setq _cooling_buff __cooling_buff)) _cooling_buff)
  (:def_buff
   (&optional __def_buff)
   (if __def_buff (setq _def_buff __def_buff)) _def_buff)
  (:neg_def_buff
   (&optional __neg_def_buff)
   (if __neg_def_buff (setq _neg_def_buff __neg_def_buff)) _neg_def_buff)
  (:attack_buff
   (&optional __attack_buff)
   (if __attack_buff (setq _attack_buff __attack_buff)) _attack_buff)
  (:serialization-length
   ()
   (+
    ;; uint8 _recovery_percent
    1
    ;; uint16 _cooling_buff
    2
    ;; uint8 _def_buff
    1
    ;; uint8 _neg_def_buff
    1
    ;; uint16 _attack_buff
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _recovery_percent
       (write-byte _recovery_percent s)
     ;; uint16 _cooling_buff
       (write-word _cooling_buff s)
     ;; uint8 _def_buff
       (write-byte _def_buff s)
     ;; uint8 _neg_def_buff
       (write-byte _neg_def_buff s)
     ;; uint16 _attack_buff
       (write-word _attack_buff s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _recovery_percent
     (setq _recovery_percent (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _cooling_buff
     (setq _cooling_buff (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _def_buff
     (setq _def_buff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _neg_def_buff
     (setq _neg_def_buff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _attack_buff
     (setq _attack_buff (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::RadarRobotBuff :md5sum-) "6787d7b9505d543c4cee8752169fddfc")
(setf (get rm_msgs::RadarRobotBuff :datatype-) "rm_msgs/RadarRobotBuff")
(setf (get rm_msgs::RadarRobotBuff :definition-)
      "# 单个机器人的增益信息
uint8 recovery_percent
uint16 cooling_buff
uint8 def_buff
uint8 neg_def_buff
uint16 attack_buff
")



(provide :rm_msgs/RadarRobotBuff "6787d7b9505d543c4cee8752169fddfc")


