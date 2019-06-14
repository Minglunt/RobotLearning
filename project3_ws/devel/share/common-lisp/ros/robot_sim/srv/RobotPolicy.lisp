; Auto-generated. Do not edit!


(cl:in-package robot_sim-srv)


;//! \htmlinclude RobotPolicy-request.msg.html

(cl:defclass <RobotPolicy-request> (roslisp-msg-protocol:ros-message)
  ((robot_state
    :reader robot_state
    :initarg :robot_state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RobotPolicy-request (<RobotPolicy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPolicy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPolicy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_sim-srv:<RobotPolicy-request> is deprecated: use robot_sim-srv:RobotPolicy-request instead.")))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <RobotPolicy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-srv:robot_state-val is deprecated.  Use robot_sim-srv:robot_state instead.")
  (robot_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPolicy-request>) ostream)
  "Serializes a message object of type '<RobotPolicy-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'robot_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPolicy-request>) istream)
  "Deserializes a message object of type '<RobotPolicy-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPolicy-request>)))
  "Returns string type for a service object of type '<RobotPolicy-request>"
  "robot_sim/RobotPolicyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPolicy-request)))
  "Returns string type for a service object of type 'RobotPolicy-request"
  "robot_sim/RobotPolicyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPolicy-request>)))
  "Returns md5sum for a message object of type '<RobotPolicy-request>"
  "3f378947ea88cc73ff6c322ead4c8836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPolicy-request)))
  "Returns md5sum for a message object of type 'RobotPolicy-request"
  "3f378947ea88cc73ff6c322ead4c8836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPolicy-request>)))
  "Returns full string definition for message of type '<RobotPolicy-request>"
  (cl:format cl:nil "float64[] robot_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPolicy-request)))
  "Returns full string definition for message of type 'RobotPolicy-request"
  (cl:format cl:nil "float64[] robot_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPolicy-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPolicy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPolicy-request
    (cl:cons ':robot_state (robot_state msg))
))
;//! \htmlinclude RobotPolicy-response.msg.html

(cl:defclass <RobotPolicy-response> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RobotPolicy-response (<RobotPolicy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPolicy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPolicy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_sim-srv:<RobotPolicy-response> is deprecated: use robot_sim-srv:RobotPolicy-response instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <RobotPolicy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-srv:action-val is deprecated.  Use robot_sim-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPolicy-response>) ostream)
  "Serializes a message object of type '<RobotPolicy-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPolicy-response>) istream)
  "Deserializes a message object of type '<RobotPolicy-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPolicy-response>)))
  "Returns string type for a service object of type '<RobotPolicy-response>"
  "robot_sim/RobotPolicyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPolicy-response)))
  "Returns string type for a service object of type 'RobotPolicy-response"
  "robot_sim/RobotPolicyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPolicy-response>)))
  "Returns md5sum for a message object of type '<RobotPolicy-response>"
  "3f378947ea88cc73ff6c322ead4c8836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPolicy-response)))
  "Returns md5sum for a message object of type 'RobotPolicy-response"
  "3f378947ea88cc73ff6c322ead4c8836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPolicy-response>)))
  "Returns full string definition for message of type '<RobotPolicy-response>"
  (cl:format cl:nil "float64[] action~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPolicy-response)))
  "Returns full string definition for message of type 'RobotPolicy-response"
  (cl:format cl:nil "float64[] action~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPolicy-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPolicy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPolicy-response
    (cl:cons ':action (action msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotPolicy)))
  'RobotPolicy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotPolicy)))
  'RobotPolicy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPolicy)))
  "Returns string type for a service object of type '<RobotPolicy>"
  "robot_sim/RobotPolicy")