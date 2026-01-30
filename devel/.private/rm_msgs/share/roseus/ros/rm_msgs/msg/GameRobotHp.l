;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::GameRobotHp)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'GameRobotHp (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::GAMEROBOTHP")
  (make-package "RM_MSGS::GAMEROBOTHP"))

(in-package "ROS")
;;//! \htmlinclude GameRobotHp.msg.html


(defclass rm_msgs::GameRobotHp
  :super ros::object
  :slots (_ally_1_robot_HP _ally_2_robot_HP _ally_3_robot_HP _ally_4_robot_HP _ally_7_robot_HP _ally_outpost_HP _ally_base_HP _stamp ))

(defmethod rm_msgs::GameRobotHp
  (:init
   (&key
    ((:ally_1_robot_HP __ally_1_robot_HP) 0)
    ((:ally_2_robot_HP __ally_2_robot_HP) 0)
    ((:ally_3_robot_HP __ally_3_robot_HP) 0)
    ((:ally_4_robot_HP __ally_4_robot_HP) 0)
    ((:ally_7_robot_HP __ally_7_robot_HP) 0)
    ((:ally_outpost_HP __ally_outpost_HP) 0)
    ((:ally_base_HP __ally_base_HP) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _ally_1_robot_HP (round __ally_1_robot_HP))
   (setq _ally_2_robot_HP (round __ally_2_robot_HP))
   (setq _ally_3_robot_HP (round __ally_3_robot_HP))
   (setq _ally_4_robot_HP (round __ally_4_robot_HP))
   (setq _ally_7_robot_HP (round __ally_7_robot_HP))
   (setq _ally_outpost_HP (round __ally_outpost_HP))
   (setq _ally_base_HP (round __ally_base_HP))
   (setq _stamp __stamp)
   self)
  (:ally_1_robot_HP
   (&optional __ally_1_robot_HP)
   (if __ally_1_robot_HP (setq _ally_1_robot_HP __ally_1_robot_HP)) _ally_1_robot_HP)
  (:ally_2_robot_HP
   (&optional __ally_2_robot_HP)
   (if __ally_2_robot_HP (setq _ally_2_robot_HP __ally_2_robot_HP)) _ally_2_robot_HP)
  (:ally_3_robot_HP
   (&optional __ally_3_robot_HP)
   (if __ally_3_robot_HP (setq _ally_3_robot_HP __ally_3_robot_HP)) _ally_3_robot_HP)
  (:ally_4_robot_HP
   (&optional __ally_4_robot_HP)
   (if __ally_4_robot_HP (setq _ally_4_robot_HP __ally_4_robot_HP)) _ally_4_robot_HP)
  (:ally_7_robot_HP
   (&optional __ally_7_robot_HP)
   (if __ally_7_robot_HP (setq _ally_7_robot_HP __ally_7_robot_HP)) _ally_7_robot_HP)
  (:ally_outpost_HP
   (&optional __ally_outpost_HP)
   (if __ally_outpost_HP (setq _ally_outpost_HP __ally_outpost_HP)) _ally_outpost_HP)
  (:ally_base_HP
   (&optional __ally_base_HP)
   (if __ally_base_HP (setq _ally_base_HP __ally_base_HP)) _ally_base_HP)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _ally_1_robot_HP
    2
    ;; uint16 _ally_2_robot_HP
    2
    ;; uint16 _ally_3_robot_HP
    2
    ;; uint16 _ally_4_robot_HP
    2
    ;; uint16 _ally_7_robot_HP
    2
    ;; uint16 _ally_outpost_HP
    2
    ;; uint16 _ally_base_HP
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _ally_1_robot_HP
       (write-word _ally_1_robot_HP s)
     ;; uint16 _ally_2_robot_HP
       (write-word _ally_2_robot_HP s)
     ;; uint16 _ally_3_robot_HP
       (write-word _ally_3_robot_HP s)
     ;; uint16 _ally_4_robot_HP
       (write-word _ally_4_robot_HP s)
     ;; uint16 _ally_7_robot_HP
       (write-word _ally_7_robot_HP s)
     ;; uint16 _ally_outpost_HP
       (write-word _ally_outpost_HP s)
     ;; uint16 _ally_base_HP
       (write-word _ally_base_HP s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _ally_1_robot_HP
     (setq _ally_1_robot_HP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ally_2_robot_HP
     (setq _ally_2_robot_HP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ally_3_robot_HP
     (setq _ally_3_robot_HP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ally_4_robot_HP
     (setq _ally_4_robot_HP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ally_7_robot_HP
     (setq _ally_7_robot_HP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ally_outpost_HP
     (setq _ally_outpost_HP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ally_base_HP
     (setq _ally_base_HP (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::GameRobotHp :md5sum-) "3b8c1902e96ad7c67b46c3d5637af066")
(setf (get rm_msgs::GameRobotHp :datatype-) "rm_msgs/GameRobotHp")
(setf (get rm_msgs::GameRobotHp :definition-)
      "uint16 ally_1_robot_HP
uint16 ally_2_robot_HP
uint16 ally_3_robot_HP
uint16 ally_4_robot_HP
uint16 ally_7_robot_HP
uint16 ally_outpost_HP
uint16 ally_base_HP

time stamp

")



(provide :rm_msgs/GameRobotHp "3b8c1902e96ad7c67b46c3d5637af066")


