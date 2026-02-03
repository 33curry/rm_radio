;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARCMD")
  (make-package "RM_MSGS::RADARCMD"))

(in-package "ROS")
;;//! \htmlinclude RadarCmd.msg.html


(defclass rm_msgs::RadarCmd
  :super ros::object
  :slots (_radar_cmd _password_cmd _password_1 _password_2 _password_3 _password_4 _password_5 _password_6 ))

(defmethod rm_msgs::RadarCmd
  (:init
   (&key
    ((:radar_cmd __radar_cmd) 0)
    ((:password_cmd __password_cmd) 0)
    ((:password_1 __password_1) 0)
    ((:password_2 __password_2) 0)
    ((:password_3 __password_3) 0)
    ((:password_4 __password_4) 0)
    ((:password_5 __password_5) 0)
    ((:password_6 __password_6) 0)
    )
   (send-super :init)
   (setq _radar_cmd (round __radar_cmd))
   (setq _password_cmd (round __password_cmd))
   (setq _password_1 (round __password_1))
   (setq _password_2 (round __password_2))
   (setq _password_3 (round __password_3))
   (setq _password_4 (round __password_4))
   (setq _password_5 (round __password_5))
   (setq _password_6 (round __password_6))
   self)
  (:radar_cmd
   (&optional __radar_cmd)
   (if __radar_cmd (setq _radar_cmd __radar_cmd)) _radar_cmd)
  (:password_cmd
   (&optional __password_cmd)
   (if __password_cmd (setq _password_cmd __password_cmd)) _password_cmd)
  (:password_1
   (&optional __password_1)
   (if __password_1 (setq _password_1 __password_1)) _password_1)
  (:password_2
   (&optional __password_2)
   (if __password_2 (setq _password_2 __password_2)) _password_2)
  (:password_3
   (&optional __password_3)
   (if __password_3 (setq _password_3 __password_3)) _password_3)
  (:password_4
   (&optional __password_4)
   (if __password_4 (setq _password_4 __password_4)) _password_4)
  (:password_5
   (&optional __password_5)
   (if __password_5 (setq _password_5 __password_5)) _password_5)
  (:password_6
   (&optional __password_6)
   (if __password_6 (setq _password_6 __password_6)) _password_6)
  (:serialization-length
   ()
   (+
    ;; uint8 _radar_cmd
    1
    ;; uint8 _password_cmd
    1
    ;; uint8 _password_1
    1
    ;; uint8 _password_2
    1
    ;; uint8 _password_3
    1
    ;; uint8 _password_4
    1
    ;; uint8 _password_5
    1
    ;; uint8 _password_6
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _radar_cmd
       (write-byte _radar_cmd s)
     ;; uint8 _password_cmd
       (write-byte _password_cmd s)
     ;; uint8 _password_1
       (write-byte _password_1 s)
     ;; uint8 _password_2
       (write-byte _password_2 s)
     ;; uint8 _password_3
       (write-byte _password_3 s)
     ;; uint8 _password_4
       (write-byte _password_4 s)
     ;; uint8 _password_5
       (write-byte _password_5 s)
     ;; uint8 _password_6
       (write-byte _password_6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _radar_cmd
     (setq _radar_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _password_cmd
     (setq _password_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _password_1
     (setq _password_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _password_2
     (setq _password_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _password_3
     (setq _password_3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _password_4
     (setq _password_4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _password_5
     (setq _password_5 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _password_6
     (setq _password_6 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::RadarCmd :md5sum-) "b64c898bf6d85c43411778433c0cde0a")
(setf (get rm_msgs::RadarCmd :datatype-) "rm_msgs/RadarCmd")
(setf (get rm_msgs::RadarCmd :definition-)
      "uint8 radar_cmd
uint8 password_cmd
uint8 password_1
uint8 password_2
uint8 password_3
uint8 password_4
uint8 password_5
uint8 password_6
")



(provide :rm_msgs/RadarCmd "b64c898bf6d85c43411778433c0cde0a")


