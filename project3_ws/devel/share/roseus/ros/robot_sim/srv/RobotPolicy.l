;; Auto-generated. Do not edit!


(when (boundp 'robot_sim::RobotPolicy)
  (if (not (find-package "ROBOT_SIM"))
    (make-package "ROBOT_SIM"))
  (shadow 'RobotPolicy (find-package "ROBOT_SIM")))
(unless (find-package "ROBOT_SIM::ROBOTPOLICY")
  (make-package "ROBOT_SIM::ROBOTPOLICY"))
(unless (find-package "ROBOT_SIM::ROBOTPOLICYREQUEST")
  (make-package "ROBOT_SIM::ROBOTPOLICYREQUEST"))
(unless (find-package "ROBOT_SIM::ROBOTPOLICYRESPONSE")
  (make-package "ROBOT_SIM::ROBOTPOLICYRESPONSE"))

(in-package "ROS")





(defclass robot_sim::RobotPolicyRequest
  :super ros::object
  :slots (_robot_state ))

(defmethod robot_sim::RobotPolicyRequest
  (:init
   (&key
    ((:robot_state __robot_state) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _robot_state __robot_state)
   self)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:serialization-length
   ()
   (+
    ;; float64[] _robot_state
    (* 8    (length _robot_state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _robot_state
     (write-long (length _robot_state) s)
     (dotimes (i (length _robot_state))
       (sys::poke (elt _robot_state i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _robot_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _robot_state i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass robot_sim::RobotPolicyResponse
  :super ros::object
  :slots (_action ))

(defmethod robot_sim::RobotPolicyResponse
  (:init
   (&key
    ((:action __action) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _action __action)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; float64[] _action
    (* 8    (length _action)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (sys::poke (elt _action i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _action i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass robot_sim::RobotPolicy
  :super ros::object
  :slots ())

(setf (get robot_sim::RobotPolicy :md5sum-) "3f378947ea88cc73ff6c322ead4c8836")
(setf (get robot_sim::RobotPolicy :datatype-) "robot_sim/RobotPolicy")
(setf (get robot_sim::RobotPolicy :request) robot_sim::RobotPolicyRequest)
(setf (get robot_sim::RobotPolicy :response) robot_sim::RobotPolicyResponse)

(defmethod robot_sim::RobotPolicyRequest
  (:response () (instance robot_sim::RobotPolicyResponse :init)))

(setf (get robot_sim::RobotPolicyRequest :md5sum-) "3f378947ea88cc73ff6c322ead4c8836")
(setf (get robot_sim::RobotPolicyRequest :datatype-) "robot_sim/RobotPolicyRequest")
(setf (get robot_sim::RobotPolicyRequest :definition-)
      "float64[] robot_state

---
float64[] action




")

(setf (get robot_sim::RobotPolicyResponse :md5sum-) "3f378947ea88cc73ff6c322ead4c8836")
(setf (get robot_sim::RobotPolicyResponse :datatype-) "robot_sim/RobotPolicyResponse")
(setf (get robot_sim::RobotPolicyResponse :definition-)
      "float64[] robot_state

---
float64[] action




")



(provide :robot_sim/RobotPolicy "3f378947ea88cc73ff6c322ead4c8836")


