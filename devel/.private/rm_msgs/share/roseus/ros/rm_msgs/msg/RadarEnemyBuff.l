;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarEnemyBuff)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarEnemyBuff (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARENEMYBUFF")
  (make-package "RM_MSGS::RADARENEMYBUFF"))

(in-package "ROS")
;;//! \htmlinclude RadarEnemyBuff.msg.html


(defclass rm_msgs::RadarEnemyBuff
  :super ros::object
  :slots (_hero _engineer _standard_3 _standard_4 _sentry _sentry_status ))

(defmethod rm_msgs::RadarEnemyBuff
  (:init
   (&key
    ((:hero __hero) (instance rm_msgs::RadarRobotBuff :init))
    ((:engineer __engineer) (instance rm_msgs::RadarRobotBuff :init))
    ((:standard_3 __standard_3) (instance rm_msgs::RadarRobotBuff :init))
    ((:standard_4 __standard_4) (instance rm_msgs::RadarRobotBuff :init))
    ((:sentry __sentry) (instance rm_msgs::RadarRobotBuff :init))
    ((:sentry_status __sentry_status) 0)
    )
   (send-super :init)
   (setq _hero __hero)
   (setq _engineer __engineer)
   (setq _standard_3 __standard_3)
   (setq _standard_4 __standard_4)
   (setq _sentry __sentry)
   (setq _sentry_status (round __sentry_status))
   self)
  (:hero
   (&rest __hero)
   (if (keywordp (car __hero))
       (send* _hero __hero)
     (progn
       (if __hero (setq _hero (car __hero)))
       _hero)))
  (:engineer
   (&rest __engineer)
   (if (keywordp (car __engineer))
       (send* _engineer __engineer)
     (progn
       (if __engineer (setq _engineer (car __engineer)))
       _engineer)))
  (:standard_3
   (&rest __standard_3)
   (if (keywordp (car __standard_3))
       (send* _standard_3 __standard_3)
     (progn
       (if __standard_3 (setq _standard_3 (car __standard_3)))
       _standard_3)))
  (:standard_4
   (&rest __standard_4)
   (if (keywordp (car __standard_4))
       (send* _standard_4 __standard_4)
     (progn
       (if __standard_4 (setq _standard_4 (car __standard_4)))
       _standard_4)))
  (:sentry
   (&rest __sentry)
   (if (keywordp (car __sentry))
       (send* _sentry __sentry)
     (progn
       (if __sentry (setq _sentry (car __sentry)))
       _sentry)))
  (:sentry_status
   (&optional __sentry_status)
   (if __sentry_status (setq _sentry_status __sentry_status)) _sentry_status)
  (:serialization-length
   ()
   (+
    ;; rm_msgs/RadarRobotBuff _hero
    (send _hero :serialization-length)
    ;; rm_msgs/RadarRobotBuff _engineer
    (send _engineer :serialization-length)
    ;; rm_msgs/RadarRobotBuff _standard_3
    (send _standard_3 :serialization-length)
    ;; rm_msgs/RadarRobotBuff _standard_4
    (send _standard_4 :serialization-length)
    ;; rm_msgs/RadarRobotBuff _sentry
    (send _sentry :serialization-length)
    ;; uint8 _sentry_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rm_msgs/RadarRobotBuff _hero
       (send _hero :serialize s)
     ;; rm_msgs/RadarRobotBuff _engineer
       (send _engineer :serialize s)
     ;; rm_msgs/RadarRobotBuff _standard_3
       (send _standard_3 :serialize s)
     ;; rm_msgs/RadarRobotBuff _standard_4
       (send _standard_4 :serialize s)
     ;; rm_msgs/RadarRobotBuff _sentry
       (send _sentry :serialize s)
     ;; uint8 _sentry_status
       (write-byte _sentry_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rm_msgs/RadarRobotBuff _hero
     (send _hero :deserialize buf ptr-) (incf ptr- (send _hero :serialization-length))
   ;; rm_msgs/RadarRobotBuff _engineer
     (send _engineer :deserialize buf ptr-) (incf ptr- (send _engineer :serialization-length))
   ;; rm_msgs/RadarRobotBuff _standard_3
     (send _standard_3 :deserialize buf ptr-) (incf ptr- (send _standard_3 :serialization-length))
   ;; rm_msgs/RadarRobotBuff _standard_4
     (send _standard_4 :deserialize buf ptr-) (incf ptr- (send _standard_4 :serialization-length))
   ;; rm_msgs/RadarRobotBuff _sentry
     (send _sentry :deserialize buf ptr-) (incf ptr- (send _sentry :serialization-length))
   ;; uint8 _sentry_status
     (setq _sentry_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::RadarEnemyBuff :md5sum-) "9496c17234cb8fd19e6a99a196c4479b")
(setf (get rm_msgs::RadarEnemyBuff :datatype-) "rm_msgs/RadarEnemyBuff")
(setf (get rm_msgs::RadarEnemyBuff :definition-)
      "# ID: 0x0A05 对方机器人增益
# 按照协议顺序：英雄、工程、步兵3、步兵4、哨兵
RadarRobotBuff hero
RadarRobotBuff engineer
RadarRobotBuff standard_3
RadarRobotBuff standard_4
RadarRobotBuff sentry
# 哨兵额外状态字节
uint8 sentry_status

================================================================================
MSG: rm_msgs/RadarRobotBuff
# 单个机器人的增益信息
uint8 recovery_percent
uint16 cooling_buff
uint8 def_buff
uint8 neg_def_buff
uint16 attack_buff
")



(provide :rm_msgs/RadarEnemyBuff "9496c17234cb8fd19e6a99a196c4479b")


