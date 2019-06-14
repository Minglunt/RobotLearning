;; Auto-generated. Do not edit!


(when (boundp 'hand_analysis::GraspInfo)
  (if (not (find-package "HAND_ANALYSIS"))
    (make-package "HAND_ANALYSIS"))
  (shadow 'GraspInfo (find-package "HAND_ANALYSIS")))
(unless (find-package "HAND_ANALYSIS::GRASPINFO")
  (make-package "HAND_ANALYSIS::GRASPINFO"))

(in-package "ROS")
;;//! \htmlinclude GraspInfo.msg.html


(defclass hand_analysis::GraspInfo
  :super ros::object
  :slots (_id _emg _glove _glove_low_dim _label ))

(defmethod hand_analysis::GraspInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:emg __emg) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:glove __glove) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:glove_low_dim __glove_low_dim) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:label __label) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _emg __emg)
   (setq _glove __glove)
   (setq _glove_low_dim __glove_low_dim)
   (setq _label (round __label))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:emg
   (&optional __emg)
   (if __emg (setq _emg __emg)) _emg)
  (:glove
   (&optional __glove)
   (if __glove (setq _glove __glove)) _glove)
  (:glove_low_dim
   (&optional __glove_low_dim)
   (if __glove_low_dim (setq _glove_low_dim __glove_low_dim)) _glove_low_dim)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32[] _emg
    (* 4    (length _emg)) 4
    ;; float32[] _glove
    (* 4    (length _glove)) 4
    ;; float32[] _glove_low_dim
    (* 4    (length _glove_low_dim)) 4
    ;; int32 _label
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
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
     ;; float32[] _glove_low_dim
     (write-long (length _glove_low_dim) s)
     (dotimes (i (length _glove_low_dim))
       (sys::poke (elt _glove_low_dim i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _label
       (write-long _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; float32[] _glove_low_dim
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _glove_low_dim (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _glove_low_dim i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _label
     (setq _label (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hand_analysis::GraspInfo :md5sum-) "c2f5dd8e97a79bb063f6e5cb0ae95755")
(setf (get hand_analysis::GraspInfo :datatype-) "hand_analysis/GraspInfo")
(setf (get hand_analysis::GraspInfo :definition-)
      "int32 id
float32[] emg
float32[] glove
float32[] glove_low_dim
int32 label

")



(provide :hand_analysis/GraspInfo "c2f5dd8e97a79bb063f6e5cb0ae95755")


