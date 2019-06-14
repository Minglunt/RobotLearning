
(cl:in-package :asdf)

(defsystem "robot_sim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobotAction" :depends-on ("_package_RobotAction"))
    (:file "_package_RobotAction" :depends-on ("_package"))
    (:file "RobotPolicy" :depends-on ("_package_RobotPolicy"))
    (:file "_package_RobotPolicy" :depends-on ("_package"))
  ))