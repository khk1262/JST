;; Auto-generated. Do not edit!


(when (boundp 'sos_fusion::MinMax)
  (if (not (find-package "SOS_FUSION"))
    (make-package "SOS_FUSION"))
  (shadow 'MinMax (find-package "SOS_FUSION")))
(unless (find-package "SOS_FUSION::MINMAX")
  (make-package "SOS_FUSION::MINMAX"))

(in-package "ROS")
;;//! \htmlinclude MinMax.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass sos_fusion::MinMax
  :super ros::object
  :slots (_cen _min _max ))

(defmethod sos_fusion::MinMax
  (:init
   (&key
    ((:cen __cen) (instance geometry_msgs::Point :init))
    ((:min __min) (instance geometry_msgs::Point :init))
    ((:max __max) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _cen __cen)
   (setq _min __min)
   (setq _max __max)
   self)
  (:cen
   (&rest __cen)
   (if (keywordp (car __cen))
       (send* _cen __cen)
     (progn
       (if __cen (setq _cen (car __cen)))
       _cen)))
  (:min
   (&rest __min)
   (if (keywordp (car __min))
       (send* _min __min)
     (progn
       (if __min (setq _min (car __min)))
       _min)))
  (:max
   (&rest __max)
   (if (keywordp (car __max))
       (send* _max __max)
     (progn
       (if __max (setq _max (car __max)))
       _max)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _cen
    (send _cen :serialization-length)
    ;; geometry_msgs/Point _min
    (send _min :serialization-length)
    ;; geometry_msgs/Point _max
    (send _max :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _cen
       (send _cen :serialize s)
     ;; geometry_msgs/Point _min
       (send _min :serialize s)
     ;; geometry_msgs/Point _max
       (send _max :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _cen
     (send _cen :deserialize buf ptr-) (incf ptr- (send _cen :serialization-length))
   ;; geometry_msgs/Point _min
     (send _min :deserialize buf ptr-) (incf ptr- (send _min :serialization-length))
   ;; geometry_msgs/Point _max
     (send _max :deserialize buf ptr-) (incf ptr- (send _max :serialization-length))
   ;;
   self)
  )

(setf (get sos_fusion::MinMax :md5sum-) "07d108d9b7862b4dd2cf6e8fa86751ba")
(setf (get sos_fusion::MinMax :datatype-) "sos_fusion/MinMax")
(setf (get sos_fusion::MinMax :definition-)
      "# Max and Min x, y points of cluster
geometry_msgs/Point cen
geometry_msgs/Point min
geometry_msgs/Point max

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :sos_fusion/MinMax "07d108d9b7862b4dd2cf6e8fa86751ba")


