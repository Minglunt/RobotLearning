;; Auto-generated. Do not edit!


(when (boundp 'grasp_clustering::GraspInfo)
  (if (not (find-package "GRASP_CLUSTERING"))
    (make-package "GRASP_CLUSTERING"))
  (shadow 'GraspInfo (find-package "GRASP_CLUSTERING")))
(unless (find-package "GRASP_CLUSTERING::GRASPINFO")
  (make-package "GRASP_CLUSTERING::GRASPINFO"))

(in-package "ROS")
;;//! \htmlinclude GraspInfo.msg.html


(defclass grasp_clustering::GraspInfo
  :super ros::object
  :slots (_label _emg _glove ))

(defmethod grasp_clustering::GraspInfo
  (:init
   (&key
    ((:label __label) 0)
    ((:emg __emg) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:glove __glove) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _label (round __label))
   (setq _emg __emg)
   (setq _glove __glove)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:emg
   (&optional __emg)
   (if __emg (setq _emg __emg)) _emg)
  (:glove
   (&optional __glove)
   (if __glove (setq _glove __glove)) _glove)
  (:serialization-length
   ()
   (+
    ;; int32 _label
    4
    ;; float32[] _emg
    (* 4    (length _emg)) 4
    ;; float32[] _glove
    (* 4    (length _glove)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _label
       (write-long _label s)
     ;; float32[] _emg
     (write-long (length _emg) s)
     (dotimes (i (length _emg))
       (sys::poke (elt _emg i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _glove
     (write-long (length _glove) s)
     (dotimes (i (length _glove))
       (sys::poke (elt _glove i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _label
     (setq _label (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _emg
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _emg (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _emg i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _glove
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _glove (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _glove i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get grasp_clustering::GraspInfo :md5sum-) "83a64d3b70046df4ff006242975c6777")
(setf (get grasp_clustering::GraspInfo :datatype-) "grasp_clustering/GraspInfo")
(setf (get grasp_clustering::GraspInfo :definition-)
      "int32 label
float32[] emg
float32[] glove

")



(provide :grasp_clustering/GraspInfo "83a64d3b70046df4ff006242975c6777")


