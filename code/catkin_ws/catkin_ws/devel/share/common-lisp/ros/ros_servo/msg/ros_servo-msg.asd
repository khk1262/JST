
(cl:in-package :asdf)

(defsystem "ros_servo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CartControl" :depends-on ("_package_CartControl"))
    (:file "_package_CartControl" :depends-on ("_package"))
  ))