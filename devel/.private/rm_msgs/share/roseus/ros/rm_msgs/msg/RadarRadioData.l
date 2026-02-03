;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarRadioData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarRadioData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARRADIODATA")
  (make-package "RM_MSGS::RADARRADIODATA"))

(in-package "ROS")
;;//! \htmlinclude RadarRadioData.msg.html


(defclass rm_msgs::RadarRadioData
  :super ros::object
  :slots (_data _stamp ))

(defmethod rm_msgs::RadarRadioData
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _data __data)
   (setq _stamp __stamp)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::RadarRadioData :md5sum-) "99c47f45e705b8c5fcf00b6b60c3cc60")
(setf (get rm_msgs::RadarRadioData :datatype-) "rm_msgs/RadarRadioData")
(setf (get rm_msgs::RadarRadioData :definition-)
      "uint8[] data
time stamp

")



(provide :rm_msgs/RadarRadioData "99c47f45e705b8c5fcf00b6b60c3cc60")


