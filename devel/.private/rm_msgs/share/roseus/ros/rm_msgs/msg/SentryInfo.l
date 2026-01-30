;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::SentryInfo)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'SentryInfo (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SENTRYINFO")
  (make-package "RM_MSGS::SENTRYINFO"))

(in-package "ROS")
;;//! \htmlinclude SentryInfo.msg.html


(defclass rm_msgs::SentryInfo
  :super ros::object
  :slots (_sentry_info _sentry_mode _power_trigger_state ))

(defmethod rm_msgs::SentryInfo
  (:init
   (&key
    ((:sentry_info __sentry_info) 0)
    ((:sentry_mode __sentry_mode) 0)
    ((:power_trigger_state __power_trigger_state) nil)
    )
   (send-super :init)
   (setq _sentry_info (round __sentry_info))
   (setq _sentry_mode (round __sentry_mode))
   (setq _power_trigger_state __power_trigger_state)
   self)
  (:sentry_info
   (&optional __sentry_info)
   (if __sentry_info (setq _sentry_info __sentry_info)) _sentry_info)
  (:sentry_mode
   (&optional __sentry_mode)
   (if __sentry_mode (setq _sentry_mode __sentry_mode)) _sentry_mode)
  (:power_trigger_state
   (&optional (__power_trigger_state :null))
   (if (not (eq __power_trigger_state :null)) (setq _power_trigger_state __power_trigger_state)) _power_trigger_state)
  (:serialization-length
   ()
   (+
    ;; uint32 _sentry_info
    4
    ;; uint8 _sentry_mode
    1
    ;; bool _power_trigger_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sentry_info
       (write-long _sentry_info s)
     ;; uint8 _sentry_mode
       (write-byte _sentry_mode s)
     ;; bool _power_trigger_state
       (if _power_trigger_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sentry_info
     (setq _sentry_info (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _sentry_mode
     (setq _sentry_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _power_trigger_state
     (setq _power_trigger_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::SentryInfo :md5sum-) "3a02e3f6914e023272819ae56a1fdd13")
(setf (get rm_msgs::SentryInfo :datatype-) "rm_msgs/SentryInfo")
(setf (get rm_msgs::SentryInfo :definition-)
      "uint32 sentry_info
uint8 sentry_mode
bool power_trigger_state

")



(provide :rm_msgs/SentryInfo "3a02e3f6914e023272819ae56a1fdd13")


