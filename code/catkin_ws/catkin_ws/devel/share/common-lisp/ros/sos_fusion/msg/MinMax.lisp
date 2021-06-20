; Auto-generated. Do not edit!


(cl:in-package sos_fusion-msg)


;//! \htmlinclude MinMax.msg.html

(cl:defclass <MinMax> (roslisp-msg-protocol:ros-message)
  ((cen
    :reader cen
    :initarg :cen
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (min
    :reader min
    :initarg :min
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (max
    :reader max
    :initarg :max
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass MinMax (<MinMax>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MinMax>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MinMax)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sos_fusion-msg:<MinMax> is deprecated: use sos_fusion-msg:MinMax instead.")))

(cl:ensure-generic-function 'cen-val :lambda-list '(m))
(cl:defmethod cen-val ((m <MinMax>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sos_fusion-msg:cen-val is deprecated.  Use sos_fusion-msg:cen instead.")
  (cen m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <MinMax>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sos_fusion-msg:min-val is deprecated.  Use sos_fusion-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <MinMax>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sos_fusion-msg:max-val is deprecated.  Use sos_fusion-msg:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MinMax>) ostream)
  "Serializes a message object of type '<MinMax>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cen) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MinMax>) istream)
  "Deserializes a message object of type '<MinMax>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cen) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MinMax>)))
  "Returns string type for a message object of type '<MinMax>"
  "sos_fusion/MinMax")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MinMax)))
  "Returns string type for a message object of type 'MinMax"
  "sos_fusion/MinMax")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MinMax>)))
  "Returns md5sum for a message object of type '<MinMax>"
  "07d108d9b7862b4dd2cf6e8fa86751ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MinMax)))
  "Returns md5sum for a message object of type 'MinMax"
  "07d108d9b7862b4dd2cf6e8fa86751ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MinMax>)))
  "Returns full string definition for message of type '<MinMax>"
  (cl:format cl:nil "# Max and Min x, y points of cluster~%geometry_msgs/Point cen~%geometry_msgs/Point min~%geometry_msgs/Point max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MinMax)))
  "Returns full string definition for message of type 'MinMax"
  (cl:format cl:nil "# Max and Min x, y points of cluster~%geometry_msgs/Point cen~%geometry_msgs/Point min~%geometry_msgs/Point max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MinMax>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cen))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MinMax>))
  "Converts a ROS message object to a list"
  (cl:list 'MinMax
    (cl:cons ':cen (cen msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
