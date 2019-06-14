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
  :slots (_robot_state ))

(defmethod robot_sim::RobotState
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

(setf (get robot_sim::RobotState :md5sum-) "6ba5a851eb3e75180022de39699d0bf4")
(setf (get robot_sim::RobotState :datatype-) "robot_sim/RobotState")
(setf (get robot_sim::RobotState :definition-)
      "float64[] robot_state

")



(provide :robot_sim/RobotState "6ba5a851eb3e75180022de39699d0bf4")


