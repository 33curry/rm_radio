;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarEnemyHp)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarEnemyHp (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARENEMYHP")
  (make-package "RM_MSGS::RADARENEMYHP"))

(in-package "ROS")
;;//! \htmlinclude RadarEnemyHp.msg.html


(defclass rm_msgs::RadarEnemyHp
  :super ros::object
  :slots (_hero_hp _engineer_hp _standard_3_hp _standard_4_hp _sentry_hp ))

(defmethod rm_msgs::RadarEnemyHp
  (:init
   (&key
    ((:hero_hp __hero_hp) 0)
    ((:engineer_hp __engineer_hp) 0)
    ((:standard_3_hp __standard_3_hp) 0)
    ((:standard_4_hp __standard_4_hp) 0)
    ((:sentry_hp __sentry_hp) 0)
    )
   (send-super :init)
   (setq _hero_hp (round __hero_hp))
   (setq _engineer_hp (round __engineer_hp))
   (setq _standard_3_hp (round __standard_3_hp))
   (setq _standard_4_hp (round __standard_4_hp))
   (setq _sentry_hp (round __sentry_hp))
   self)
  (:hero_hp
   (&optional __hero_hp)
   (if __hero_hp (setq _hero_hp __hero_hp)) _hero_hp)
  (:engineer_hp
   (&optional __engineer_hp)
   (if __engineer_hp (setq _engineer_hp __engineer_hp)) _engineer_hp)
  (:standard_3_hp
   (&optional __standard_3_hp)
   (if __standard_3_hp (setq _standard_3_hp __standard_3_hp)) _standard_3_hp)
  (:standard_4_hp
   (&optional __standard_4_hp)
   (if __standard_4_hp (setq _standard_4_hp __standard_4_hp)) _standard_4_hp)
  (:sentry_hp
   (&optional __sentry_hp)
   (if __sentry_hp (setq _sentry_hp __sentry_hp)) _sentry_hp)
  (:serialization-length
   ()
   (+
    ;; uint16 _hero_hp
    2
    ;; uint16 _engineer_hp
    2
    ;; uint16 _standard_3_hp
    2
    ;; uint16 _standard_4_hp
    2
    ;; uint16 _sentry_hp
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _hero_hp
       (write-word _hero_hp s)
     ;; uint16 _engineer_hp
       (write-word _engineer_hp s)
     ;; uint16 _standard_3_hp
       (write-word _standard_3_hp s)
     ;; uint16 _standard_4_hp
       (write-word _standard_4_hp s)
     ;; uint16 _sentry_hp
       (write-word _sentry_hp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _hero_hp
     (setq _hero_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _engineer_hp
     (setq _engineer_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _standard_3_hp
     (setq _standard_3_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _standard_4_hp
     (setq _standard_4_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _sentry_hp
     (setq _sentry_hp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::RadarEnemyHp :md5sum-) "237ae6302bfb5769809771e806c70a45")
(setf (get rm_msgs::RadarEnemyHp :datatype-) "rm_msgs/RadarEnemyHp")
(setf (get rm_msgs::RadarEnemyHp :definition-)
      "# ID: 0x0A02 对方机器人血量
uint16 hero_hp
uint16 engineer_hp
uint16 standard_3_hp
uint16 standard_4_hp
uint16 sentry_hp
")



(provide :rm_msgs/RadarEnemyHp "237ae6302bfb5769809771e806c70a45")


