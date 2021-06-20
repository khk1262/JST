; Auto-generated. Do not edit!


(cl:in-package ros_servo-msg)


;//! \htmlinclude CartControl.msg.html

(cl:defclass <CartControl> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (left_speed
    :reader left_speed
    :initarg :left_speed
    :type cl:fixnum
    :initform 0)
   (right_speed
    :reader right_speed
    :initarg :right_speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CartControl (<CartControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_servo-msg:<CartControl> is deprecated: use ros_servo-msg:CartControl instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CartControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_servo-msg:state-val is deprecated.  Use ros_servo-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'left_speed-val :lambda-list '(m))
(cl:defmethod left_speed-val ((m <CartControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_servo-msg:left_speed-val is deprecated.  Use ros_servo-msg:left_speed instead.")
  (left_speed m))

(cl:ensure-generic-function 'right_speed-val :lambda-list '(m))
(cl:defmethod right_speed-val ((m <CartControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_servo-msg:right_speed-val is deprecated.  Use ros_servo-msg:right_speed instead.")
  (right_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartControl>) ostream)
  "Serializes a message object of type '<CartControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartControl>) istream)
  "Deserializes a message object of type '<CartControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_speed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartControl>)))
  "Returns string type for a message object of type '<CartControl>"
  "ros_servo/CartControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartControl)))
  "Returns string type for a message object of type 'CartControl"
  "ros_servo/CartControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartControl>)))
  "Returns md5sum for a message object of type '<CartControl>"
  "853f76a12162f38728944369533dcd01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartControl)))
  "Returns md5sum for a message object of type 'CartControl"
  "853f76a12162f38728944369533dcd01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartControl>)))
  "Returns full string definition for message of type '<CartControl>"
  (cl:format cl:nil "# state of Cart and speed of wheels~%uint16 state~%uint16 left_speed~%uint16 right_speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartControl)))
  "Returns full string definition for message of type 'CartControl"
  (cl:format cl:nil "# state of Cart and speed of wheels~%uint16 state~%uint16 left_speed~%uint16 right_speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartControl>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartControl>))
  "Converts a ROS message object to a list"
  (cl:list 'CartControl
    (cl:cons ':state (state msg))
    (cl:cons ':left_speed (left_speed msg))
    (cl:cons ':right_speed (right_speed msg))
))
