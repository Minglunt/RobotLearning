
(cl:in-package :asdf)

(defsystem "grasp_clustering-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GraspInfo" :depends-on ("_package_GraspInfo"))
    (:file "_package_GraspInfo" :depends-on ("_package"))
  ))