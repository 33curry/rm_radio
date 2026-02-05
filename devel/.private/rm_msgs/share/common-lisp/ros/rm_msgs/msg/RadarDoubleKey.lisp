; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarDoubleKey.msg.html

(cl:defclass <RadarDoubleKey> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass RadarDoubleKey (<RadarDoubleKey>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarDoubleKey>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarDoubleKey)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarDoubleKey> is deprecated: use rm_msgs-msg:RadarDoubleKey instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <RadarDoubleKey>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key-val is deprecated.  Use rm_msgs-msg:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarDoubleKey>) ostream)
  "Serializes a message object of type '<RadarDoubleKey>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarDoubleKey>) istream)
  "Deserializes a message object of type '<RadarDoubleKey>"
  (cl:setf (cl:slot-value msg 'key) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'key)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarDoubleKey>)))
  "Returns string type for a message object of type '<RadarDoubleKey>"
  "rm_msgs/RadarDoubleKey")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarDoubleKey)))
  "Returns string type for a message object of type 'RadarDoubleKey"
  "rm_msgs/RadarDoubleKey")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarDoubleKey>)))
  "Returns md5sum for a message object of type '<RadarDoubleKey>"
  "4e7c4656cadf17b1c0d247eed3cdf8e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarDoubleKey)))
  "Returns md5sum for a message object of type 'RadarDoubleKey"
  "4e7c4656cadf17b1c0d247eed3cdf8e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarDoubleKey>)))
  "Returns full string definition for message of type '<RadarDoubleKey>"
  (cl:format cl:nil "uint8[6] key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarDoubleKey)))
  "Returns full string definition for message of type 'RadarDoubleKey"
  (cl:format cl:nil "uint8[6] key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarDoubleKey>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'key) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarDoubleKey>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarDoubleKey
    (cl:cons ':key (key msg))
))
