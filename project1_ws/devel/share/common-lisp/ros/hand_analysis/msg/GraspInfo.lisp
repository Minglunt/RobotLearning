; Auto-generated. Do not edit!


(cl:in-package hand_analysis-msg)


;//! \htmlinclude GraspInfo.msg.html

(cl:defclass <GraspInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (emg
    :reader emg
    :initarg :emg
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (glove
    :reader glove
    :initarg :glove
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (glove_low_dim
    :reader glove_low_dim
    :initarg :glove_low_dim
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (label
    :reader label
    :initarg :label
    :type cl:integer
    :initform 0))
)

(cl:defclass GraspInfo (<GraspInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_analysis-msg:<GraspInfo> is deprecated: use hand_analysis-msg:GraspInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GraspInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_analysis-msg:id-val is deprecated.  Use hand_analysis-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'emg-val :lambda-list '(m))
(cl:defmethod emg-val ((m <GraspInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_analysis-msg:emg-val is deprecated.  Use hand_analysis-msg:emg instead.")
  (emg m))

(cl:ensure-generic-function 'glove-val :lambda-list '(m))
(cl:defmethod glove-val ((m <GraspInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_analysis-msg:glove-val is deprecated.  Use hand_analysis-msg:glove instead.")
  (glove m))

(cl:ensure-generic-function 'glove_low_dim-val :lambda-list '(m))
(cl:defmethod glove_low_dim-val ((m <GraspInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_analysis-msg:glove_low_dim-val is deprecated.  Use hand_analysis-msg:glove_low_dim instead.")
  (glove_low_dim m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <GraspInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_analysis-msg:label-val is deprecated.  Use hand_analysis-msg:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspInfo>) ostream)
  "Serializes a message object of type '<GraspInfo>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'emg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'emg))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'glove))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'glove))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'glove_low_dim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'glove_low_dim))
  (cl:let* ((signed (cl:slot-value msg 'label)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspInfo>) istream)
  "Deserializes a message object of type '<GraspInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'emg) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'emg)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'glove) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'glove)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'glove_low_dim) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'glove_low_dim)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspInfo>)))
  "Returns string type for a message object of type '<GraspInfo>"
  "hand_analysis/GraspInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspInfo)))
  "Returns string type for a message object of type 'GraspInfo"
  "hand_analysis/GraspInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspInfo>)))
  "Returns md5sum for a message object of type '<GraspInfo>"
  "c2f5dd8e97a79bb063f6e5cb0ae95755")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspInfo)))
  "Returns md5sum for a message object of type 'GraspInfo"
  "c2f5dd8e97a79bb063f6e5cb0ae95755")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspInfo>)))
  "Returns full string definition for message of type '<GraspInfo>"
  (cl:format cl:nil "int32 id~%float32[] emg~%float32[] glove~%float32[] glove_low_dim~%int32 label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspInfo)))
  "Returns full string definition for message of type 'GraspInfo"
  (cl:format cl:nil "int32 id~%float32[] emg~%float32[] glove~%float32[] glove_low_dim~%int32 label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspInfo>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'emg) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'glove) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'glove_low_dim) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspInfo
    (cl:cons ':id (id msg))
    (cl:cons ':emg (emg msg))
    (cl:cons ':glove (glove msg))
    (cl:cons ':glove_low_dim (glove_low_dim msg))
    (cl:cons ':label (label msg))
))
