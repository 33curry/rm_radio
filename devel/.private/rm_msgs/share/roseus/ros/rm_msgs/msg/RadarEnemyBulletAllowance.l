;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarEnemyBulletAllowance)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarEnemyBulletAllowance (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARENEMYBULLETALLOWANCE")
  (make-package "RM_MSGS::RADARENEMYBULLETALLOWANCE"))

(in-package "ROS")
;;//! \htmlinclude RadarEnemyBulletAllowance.msg.html


(defclass rm_msgs::RadarEnemyBulletAllowance
  :super ros::object
  :slots (_hero_bullet _standard_3_bullet _standard_4_bullet _air_bullet _sentry_bullet ))

(defmethod rm_msgs::RadarEnemyBulletAllowance
  (:init
   (&key
    ((:hero_bullet __hero_bullet) 0)
    ((:standard_3_bullet __standard_3_bullet) 0)
    ((:standard_4_bullet __standard_4_bullet) 0)
    ((:air_bullet __air_bullet) 0)
    ((:sentry_bullet __sentry_bullet) 0)
    )
   (send-super :init)
   (setq _hero_bullet (round __hero_bullet))
   (setq _standard_3_bullet (round __standard_3_bullet))
   (setq _standard_4_bullet (round __standard_4_bullet))
   (setq _air_bullet (round __air_bullet))
   (setq _sentry_bullet (round __sentry_bullet))
   self)
  (:hero_bullet
   (&optional __hero_bullet)
   (if __hero_bullet (setq _hero_bullet __hero_bullet)) _hero_bullet)
  (:standard_3_bullet
   (&optional __standard_3_bullet)
   (if __standard_3_bullet (setq _standard_3_bullet __standard_3_bullet)) _standard_3_bullet)
  (:standard_4_bullet
   (&optional __standard_4_bullet)
   (if __standard_4_bullet (setq _standard_4_bullet __standard_4_bullet)) _standard_4_bullet)
  (:air_bullet
   (&optional __air_bullet)
   (if __air_bullet (setq _air_bullet __air_bullet)) _air_bullet)
  (:sentry_bullet
   (&optional __sentry_bullet)
   (if __sentry_bullet (setq _sentry_bullet __sentry_bullet)) _sentry_bullet)
  (:serialization-length
   ()
   (+
    ;; uint16 _hero_bullet
    2
    ;; uint16 _standard_3_bullet
    2
    ;; uint16 _standard_4_bullet
    2
    ;; uint16 _air_bullet
    2
    ;; uint16 _sentry_bullet
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _hero_bullet
       (write-word _hero_bullet s)
     ;; uint16 _standard_3_bullet
       (write-word _standard_3_bullet s)
     ;; uint16 _standard_4_bullet
       (write-word _standard_4_bullet s)
     ;; uint16 _air_bullet
       (write-word _air_bullet s)
     ;; uint16 _sentry_bullet
       (write-word _sentry_bullet s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _hero_bullet
     (setq _hero_bullet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _standard_3_bullet
     (setq _standard_3_bullet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _standard_4_bullet
     (setq _standard_4_bullet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _air_bullet
     (setq _air_bullet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _sentry_bullet
     (setq _sentry_bullet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::RadarEnemyBulletAllowance :md5sum-) "9c381ccbc9d54f5aa402ed75f0aecc4a")
(setf (get rm_msgs::RadarEnemyBulletAllowance :datatype-) "rm_msgs/RadarEnemyBulletAllowance")
(setf (get rm_msgs::RadarEnemyBulletAllowance :definition-)
      "# ID: 0x0A03 对方允许发弹量
uint16 hero_bullet
uint16 standard_3_bullet
uint16 standard_4_bullet
uint16 air_bullet
uint16 sentry_bullet

")



(provide :rm_msgs/RadarEnemyBulletAllowance "9c381ccbc9d54f5aa402ed75f0aecc4a")


