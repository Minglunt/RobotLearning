;; Auto-generated. Do not edit!


(when (boundp 'robot_sim::RobotAction)
  (if (not (find-package "ROBOT_SIM"))
    (make-package "ROBOT_SIM"))
  (shadow 'RobotAction (find-package "ROBOT_SIM")))
(unless (find-package "ROBOT_SIM::ROBOTACTION")
  (make-package "ROBOT_SIM::ROBOTACTION"))
(unless (find-package "ROBOT_SIM::ROBOTACTIONREQUEST")
  (make-package "ROBOT_SIM::ROBOTACTIONREQUEST"))
(unless (find-package "ROBOT_SIM::ROBOTACTIONRESPONSE")
  (make-package "ROBOT_SIM::ROBOTACTIONRESPONSE"))

(in-package "ROS")





(defclass robot_sim::RobotActionRequest
  :super ros::object
  :slots (_reset_robot _reset_pole_angle _action ))

(defmethod robot_sim::RobotActionRequest
  (:init
   (&key
    ((:reset_robot __reset_robot) nil)
    ((:reset_pole_angle __reset_pole_angle) 0.0)
    ((:action __action) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _reset_robot __reset_robot)
   (setq _reset_pole_angle (float __reset_pole_angle))
   (setq _action __action)
   self)
  (:reset_robot
   (&optional __reset_robot)
   (if __reset_robot (setq _reset_robot __reset_robot)) _reset_robot)
  (:reset_pole_angle
   (&optional __reset_pole_angle)
   (if __reset_pole_angle (setq _reset_pole_angle __reset_pole_angle)) _reset_pole_angle)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; bool _reset_robot
    1
    ;; float64 _reset_pole_angle
    8
    ;; float64[] _action
    (* 8    (length _action)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reset_robot
       (if _reset_robot (write-byte -1 s) (write-byte 0 s))
     ;; float64 _reset_pole_angle
       (sys::poke _reset_pole_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (sys::poke (elt _action i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reset_robot
     (setq _reset_robot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _reset_pole_angle
     (setq _reset_pole_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(defclass robot_sim::RobotActionResponse
  :super ros::object
  :slots (_robot_state ))

(defmethod robot_sim::RobotActionResponse
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

(defclass robot_sim::RobotAction
  :super ros::object
  :slots ())

(setf (get robot_sim::RobotAction :md5sum-) "29ad5cb30359c2a3444c7eb6d914b27b")
(setf (get robot_sim::RobotAction :datatype-) "robot_sim/RobotAction")
(setf (get robot_sim::RobotAction :request) robot_sim::RobotActionRequest)
(setf (get robot_sim::RobotAction :response) robot_sim::RobotActionResponse)

(defmethod robot_sim::RobotActionRequest
  (:response () (instance robot_sim::RobotActionResponse :init)))

(setf (get robot_sim::RobotActionRequest :md5sum-) "29ad5cb30359c2a3444c7eb6d914b27b")
(setf (get robot_sim::RobotActionRequest :datatype-) "robot_sim/RobotActionRequest")
(setf (get robot_sim::RobotActionRequest :definition-)
      "
bool reset_robot
float64 reset_pole_angle

float64[] action
---
float64[] robot_state

")

(setf (get robot_sim::RobotActionResponse :md5sum-) "29ad5cb30359c2a3444c7eb6d914b27b")
(setf (get robot_sim::RobotActionResponse :datatype-) "robot_sim/RobotActionResponse")
(setf (get robot_sim::RobotActionResponse :definition-)
      "
bool reset_robot
float64 reset_pole_angle

float64[] action
---
float64[] robot_state

")



(provide :robot_sim/RobotAction "29ad5cb30359c2a3444c7eb6d914b27b")


