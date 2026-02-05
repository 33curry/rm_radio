;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarDoubleKey)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarDoubleKey (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARDOUBLEKEY")
  (make-package "RM_MSGS::RADARDOUBLEKEY"))

(in-package "ROS")
;;//! \htmlinclude RadarDoubleKey.msg.html


(defclass rm_msgs::RadarDoubleKey
  :super ros::object
  :slots (_key ))

(defmethod rm_msgs::RadarDoubleKey
  (:init
   (&key
    ((:key __key) (make-array 6 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _key __key)
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; uint8[6] _key
    (* 1    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[6] _key
     (princ _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[6] _key
   (setq _key (make-array 6 :element-type :char))
   (replace _key buf :start2 ptr-) (incf ptr- 6)
   ;;
   self)
  )

(setf (get rm_msgs::RadarDoubleKey :md5sum-) "4e7c4656cadf17b1c0d247eed3cdf8e2")
(setf (get rm_msgs::RadarDoubleKey :datatype-) "rm_msgs/RadarDoubleKey")
(setf (get rm_msgs::RadarDoubleKey :definition-)
      "uint8[6] key

")



(provide :rm_msgs/RadarDoubleKey "4e7c4656cadf17b1c0d247eed3cdf8e2")


