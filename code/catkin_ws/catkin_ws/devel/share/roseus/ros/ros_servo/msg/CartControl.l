;; Auto-generated. Do not edit!


(when (boundp 'ros_servo::CartControl)
  (if (not (find-package "ROS_SERVO"))
    (make-package "ROS_SERVO"))
  (shadow 'CartControl (find-package "ROS_SERVO")))
(unless (find-package "ROS_SERVO::CARTCONTROL")
  (make-package "ROS_SERVO::CARTCONTROL"))

(in-package "ROS")
;;//! \htmlinclude CartControl.msg.html


(defclass ros_servo::CartControl
  :super ros::object
  :slots (_state _left_speed _right_speed ))

(defmethod ros_servo::CartControl
  (:init
   (&key
    ((:state __state) 0)
    ((:left_speed __left_speed) 0)
    ((:right_speed __right_speed) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _left_speed (round __left_speed))
   (setq _right_speed (round __right_speed))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:left_speed
   (&optional __left_speed)
   (if __left_speed (setq _left_speed __left_speed)) _left_speed)
  (:right_speed
   (&optional __right_speed)
   (if __right_speed (setq _right_speed __right_speed)) _right_speed)
  (:serialization-length
   ()
   (+
    ;; uint16 _state
    2
    ;; uint16 _left_speed
    2
    ;; uint16 _right_speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _state
       (write-word _state s)
     ;; uint16 _left_speed
       (write-word _left_speed s)
     ;; uint16 _right_speed
       (write-word _right_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _state
     (setq _state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _left_speed
     (setq _left_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _right_speed
     (setq _right_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_servo::CartControl :md5sum-) "853f76a12162f38728944369533dcd01")
(setf (get ros_servo::CartControl :datatype-) "ros_servo/CartControl")
(setf (get ros_servo::CartControl :definition-)
      "# state of Cart and speed of wheels
uint16 state
uint16 left_speed
uint16 right_speed


")



(provide :ros_servo/CartControl "853f76a12162f38728944369533dcd01")


