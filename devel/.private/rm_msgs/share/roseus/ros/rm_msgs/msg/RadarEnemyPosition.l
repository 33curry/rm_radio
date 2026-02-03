;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarEnemyPosition)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarEnemyPosition (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARENEMYPOSITION")
  (make-package "RM_MSGS::RADARENEMYPOSITION"))

(in-package "ROS")
;;//! \htmlinclude RadarEnemyPosition.msg.html


(defclass rm_msgs::RadarEnemyPosition
  :super ros::object
  :slots (_hero_x _hero_y _engineer_x _engineer_y _standard_3_x _standard_3_y _standard_4_x _standard_4_y _air_x _air_y _sentry_x _sentry_y ))

(defmethod rm_msgs::RadarEnemyPosition
  (:init
   (&key
    ((:hero_x __hero_x) 0.0)
    ((:hero_y __hero_y) 0.0)
    ((:engineer_x __engineer_x) 0.0)
    ((:engineer_y __engineer_y) 0.0)
    ((:standard_3_x __standard_3_x) 0.0)
    ((:standard_3_y __standard_3_y) 0.0)
    ((:standard_4_x __standard_4_x) 0.0)
    ((:standard_4_y __standard_4_y) 0.0)
    ((:air_x __air_x) 0.0)
    ((:air_y __air_y) 0.0)
    ((:sentry_x __sentry_x) 0.0)
    ((:sentry_y __sentry_y) 0.0)
    )
   (send-super :init)
   (setq _hero_x (float __hero_x))
   (setq _hero_y (float __hero_y))
   (setq _engineer_x (float __engineer_x))
   (setq _engineer_y (float __engineer_y))
   (setq _standard_3_x (float __standard_3_x))
   (setq _standard_3_y (float __standard_3_y))
   (setq _standard_4_x (float __standard_4_x))
   (setq _standard_4_y (float __standard_4_y))
   (setq _air_x (float __air_x))
   (setq _air_y (float __air_y))
   (setq _sentry_x (float __sentry_x))
   (setq _sentry_y (float __sentry_y))
   self)
  (:hero_x
   (&optional __hero_x)
   (if __hero_x (setq _hero_x __hero_x)) _hero_x)
  (:hero_y
   (&optional __hero_y)
   (if __hero_y (setq _hero_y __hero_y)) _hero_y)
  (:engineer_x
   (&optional __engineer_x)
   (if __engineer_x (setq _engineer_x __engineer_x)) _engineer_x)
  (:engineer_y
   (&optional __engineer_y)
   (if __engineer_y (setq _engineer_y __engineer_y)) _engineer_y)
  (:standard_3_x
   (&optional __standard_3_x)
   (if __standard_3_x (setq _standard_3_x __standard_3_x)) _standard_3_x)
  (:standard_3_y
   (&optional __standard_3_y)
   (if __standard_3_y (setq _standard_3_y __standard_3_y)) _standard_3_y)
  (:standard_4_x
   (&optional __standard_4_x)
   (if __standard_4_x (setq _standard_4_x __standard_4_x)) _standard_4_x)
  (:standard_4_y
   (&optional __standard_4_y)
   (if __standard_4_y (setq _standard_4_y __standard_4_y)) _standard_4_y)
  (:air_x
   (&optional __air_x)
   (if __air_x (setq _air_x __air_x)) _air_x)
  (:air_y
   (&optional __air_y)
   (if __air_y (setq _air_y __air_y)) _air_y)
  (:sentry_x
   (&optional __sentry_x)
   (if __sentry_x (setq _sentry_x __sentry_x)) _sentry_x)
  (:sentry_y
   (&optional __sentry_y)
   (if __sentry_y (setq _sentry_y __sentry_y)) _sentry_y)
  (:serialization-length
   ()
   (+
    ;; float32 _hero_x
    4
    ;; float32 _hero_y
    4
    ;; float32 _engineer_x
    4
    ;; float32 _engineer_y
    4
    ;; float32 _standard_3_x
    4
    ;; float32 _standard_3_y
    4
    ;; float32 _standard_4_x
    4
    ;; float32 _standard_4_y
    4
    ;; float32 _air_x
    4
    ;; float32 _air_y
    4
    ;; float32 _sentry_x
    4
    ;; float32 _sentry_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _hero_x
       (sys::poke _hero_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hero_y
       (sys::poke _hero_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _engineer_x
       (sys::poke _engineer_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _engineer_y
       (sys::poke _engineer_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_3_x
       (sys::poke _standard_3_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_3_y
       (sys::poke _standard_3_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_4_x
       (sys::poke _standard_4_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_4_y
       (sys::poke _standard_4_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _air_x
       (sys::poke _air_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _air_y
       (sys::poke _air_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sentry_x
       (sys::poke _sentry_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sentry_y
       (sys::poke _sentry_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _hero_x
     (setq _hero_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hero_y
     (setq _hero_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _engineer_x
     (setq _engineer_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _engineer_y
     (setq _engineer_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_3_x
     (setq _standard_3_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_3_y
     (setq _standard_3_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_4_x
     (setq _standard_4_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_4_y
     (setq _standard_4_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _air_x
     (setq _air_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _air_y
     (setq _air_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sentry_x
     (setq _sentry_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sentry_y
     (setq _sentry_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::RadarEnemyPosition :md5sum-) "4ff9750e658ae1214e4c1775e4bd4a0c")
(setf (get rm_msgs::RadarEnemyPosition :datatype-) "rm_msgs/RadarEnemyPosition")
(setf (get rm_msgs::RadarEnemyPosition :definition-)
      "float32 hero_x
float32 hero_y
float32 engineer_x
float32 engineer_y
float32 standard_3_x
float32 standard_3_y
float32 standard_4_x
float32 standard_4_y
float32 air_x
float32 air_y
float32 sentry_x
float32 sentry_y

")



(provide :rm_msgs/RadarEnemyPosition "4ff9750e658ae1214e4c1775e4bd4a0c")


