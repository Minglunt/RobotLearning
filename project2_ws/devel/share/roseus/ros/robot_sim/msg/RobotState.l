;; Auto-generated. Do not edit!


(when (boundp 'robot_sim::RobotState)
  (if (not (find-package "ROBOT_SIM"))
    (make-package "ROBOT_SIM"))
  (shadow 'RobotState (find-package "ROBOT_SIM")))
(unless (find-package "ROBOT_SIM::ROBOTSTATE")
  (make-package "ROBOT_SIM::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html


(defclass robot_sim::RobotState
  :super ros::object
  :slots (_robot_name _robot_state ))

(defmethod robot_sim::RobotState
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:robot_state __robot_state) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _robot_state __robot_state)
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; float64[] _robot_state
    (* 8    (length _robot_state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; float64[] _robot_state
     (write-long (length _robot_state) s)
     (dotimes (i (length _robot_state))
       (sys::poke (elt _robot_state i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get robot_sim::RobotState :md5sum-) "a47aee04c7ccb77bbdb7ca832f483d4e")
(setf (get robot_sim::RobotState :datatype-) "robot_sim/RobotState")
(setf (get robot_sim::RobotState :definition-)
      "string robot_name
float64[] robot_state

")



(provide :robot_sim/RobotState "a47aee04c7ccb77bbdb7ca832f483d4e")


