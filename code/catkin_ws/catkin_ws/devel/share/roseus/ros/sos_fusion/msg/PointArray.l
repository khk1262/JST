;; Auto-generated. Do not edit!


(when (boundp 'sos_fusion::PointArray)
  (if (not (find-package "SOS_FUSION"))
    (make-package "SOS_FUSION"))
  (shadow 'PointArray (find-package "SOS_FUSION")))
(unless (find-package "SOS_FUSION::POINTARRAY")
  (make-package "SOS_FUSION::POINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude PointArray.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sos_fusion::PointArray
  :super ros::object
  :slots (_header _cluster_center _cluster_min _cluster_max ))

(defmethod sos_fusion::PointArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cluster_center __cluster_center) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:cluster_min __cluster_min) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:cluster_max __cluster_max) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cluster_center __cluster_center)
   (setq _cluster_min __cluster_min)
   (setq _cluster_max __cluster_max)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cluster_center
   (&rest __cluster_center)
   (if (keywordp (car __cluster_center))
       (send* _cluster_center __cluster_center)
     (progn
       (if __cluster_center (setq _cluster_center (car __cluster_center)))
       _cluster_center)))
  (:cluster_min
   (&rest __cluster_min)
   (if (keywordp (car __cluster_min))
       (send* _cluster_min __cluster_min)
     (progn
       (if __cluster_min (setq _cluster_min (car __cluster_min)))
       _cluster_min)))
  (:cluster_max
   (&rest __cluster_max)
   (if (keywordp (car __cluster_max))
       (send* _cluster_max __cluster_max)
     (progn
       (if __cluster_max (setq _cluster_max (car __cluster_max)))
       _cluster_max)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point[] _cluster_center
    (apply #'+ (send-all _cluster_center :serialization-length)) 4
    ;; geometry_msgs/Point[] _cluster_min
    (apply #'+ (send-all _cluster_min :serialization-length)) 4
    ;; geometry_msgs/Point[] _cluster_max
    (apply #'+ (send-all _cluster_max :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point[] _cluster_center
     (write-long (length _cluster_center) s)
     (dolist (elem _cluster_center)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _cluster_min
     (write-long (length _cluster_min) s)
     (dolist (elem _cluster_min)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _cluster_max
     (write-long (length _cluster_max) s)
     (dolist (elem _cluster_max)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point[] _cluster_center
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_center (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _cluster_center)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _cluster_min
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_min (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _cluster_min)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _cluster_max
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_max (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _cluster_max)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sos_fusion::PointArray :md5sum-) "2fe739f074abe7938c339e74128b9b77")
(setf (get sos_fusion::PointArray :datatype-) "sos_fusion/PointArray")
(setf (get sos_fusion::PointArray :definition-)
      "std_msgs/Header header
geometry_msgs/Point[] cluster_center
geometry_msgs/Point[] cluster_min
geometry_msgs/Point[] cluster_max
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :sos_fusion/PointArray "2fe739f074abe7938c339e74128b9b77")


