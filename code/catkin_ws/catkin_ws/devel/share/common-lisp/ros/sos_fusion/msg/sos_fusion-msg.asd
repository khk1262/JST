
(cl:in-package :asdf)

(defsystem "sos_fusion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MinMax" :depends-on ("_package_MinMax"))
    (:file "_package_MinMax" :depends-on ("_package"))
    (:file "PointArray" :depends-on ("_package_PointArray"))
    (:file "_package_PointArray" :depends-on ("_package"))
  ))