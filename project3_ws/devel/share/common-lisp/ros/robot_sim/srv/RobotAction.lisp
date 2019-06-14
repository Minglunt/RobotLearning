; Auto-generated. Do not edit!


(cl:in-package robot_sim-srv)


;//! \htmlinclude RobotAction-request.msg.html

(cl:defclass <RobotAction-request> (roslisp-msg-protocol:ros-message)
  ((reset_robot
    :reader reset_robot
    :initarg :reset_robot
    :type cl:boolean
    :initform cl:nil)
   (reset_pole_angle
    :reader reset_pole_angle
    :initarg :reset_pole_angle
    :type cl:float
    :initform 0.0)
   (action
    :reader action
    :initarg :action
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RobotAction-request (<RobotAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_sim-srv:<RobotAction-request> is deprecated: use robot_sim-srv:RobotAction-request instead.")))

(cl:ensure-generic-function 'reset_robot-val :lambda-list '(m))
(cl:defmethod reset_robot-val ((m <RobotAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-srv:reset_robot-val is deprecated.  Use robot_sim-srv:reset_robot instead.")
  (reset_robot m))

(cl:ensure-generic-function 'reset_pole_angle-val :lambda-list '(m))
(cl:defmethod reset_pole_angle-val ((m <RobotAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-srv:reset_pole_angle-val is deprecated.  Use robot_sim-srv:reset_pole_angle instead.")
  (reset_pole_angle m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <RobotAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-srv:action-val is deprecated.  Use robot_sim-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotAction-request>) ostream)
  "Serializes a message object of type '<RobotAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_robot) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'reset_pole_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotAction-request>) istream)
  "Deserializes a message object of type '<RobotAction-request>"
    (cl:setf (cl:slot-value msg 'reset_robot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reset_pole_angle) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotAction-request>)))
  "Returns string type for a service object of type '<RobotAction-request>"
  "robot_sim/RobotActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotAction-request)))
  "Returns string type for a service object of type 'RobotAction-request"
  "robot_sim/RobotActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotAction-request>)))
  "Returns md5sum for a message object of type '<RobotAction-request>"
  "29ad5cb30359c2a3444c7eb6d914b27b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotAction-request)))
  "Returns md5sum for a message object of type 'RobotAction-request"
  "29ad5cb30359c2a3444c7eb6d914b27b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotAction-request>)))
  "Returns full string definition for message of type '<RobotAction-request>"
  (cl:format cl:nil "~%bool reset_robot~%float64 reset_pole_angle~%~%float64[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotAction-request)))
  "Returns full string definition for message of type 'RobotAction-request"
  (cl:format cl:nil "~%bool reset_robot~%float64 reset_pole_angle~%~%float64[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotAction-request>))
  (cl:+ 0
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotAction-request
    (cl:cons ':reset_robot (reset_robot msg))
    (cl:cons ':reset_pole_angle (reset_pole_angle msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude RobotAction-response.msg.html

(cl:defclass <RobotAction-response> (roslisp-msg-protocol:ros-message)
  ((robot_state
    :reader robot_state
    :initarg :robot_state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RobotAction-response (<RobotAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_sim-srv:<RobotAction-response> is deprecated: use robot_sim-srv:RobotAction-response instead.")))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <RobotAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-srv:robot_state-val is deprecated.  Use robot_sim-srv:robot_state instead.")
  (robot_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotAction-response>) ostream)
  "Serializes a message object of type '<RobotAction-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotAction-response>) istream)
  "Deserializes a message object of type '<RobotAction-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotAction-response>)))
  "Returns string type for a service object of type '<RobotAction-response>"
  "robot_sim/RobotActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotAction-response)))
  "Returns string type for a service object of type 'RobotAction-response"
  "robot_sim/RobotActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotAction-response>)))
  "Returns md5sum for a message object of type '<RobotAction-response>"
  "29ad5cb30359c2a3444c7eb6d914b27b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotAction-response)))
  "Returns md5sum for a message object of type 'RobotAction-response"
  "29ad5cb30359c2a3444c7eb6d914b27b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotAction-response>)))
  "Returns full string definition for message of type '<RobotAction-response>"
  (cl:format cl:nil "float64[] robot_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotAction-response)))
  "Returns full string definition for message of type 'RobotAction-response"
  (cl:format cl:nil "float64[] robot_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotAction-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotAction-response
    (cl:cons ':robot_state (robot_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotAction)))
  'RobotAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotAction)))
  'RobotAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotAction)))
  "Returns string type for a service object of type '<RobotAction>"
  "robot_sim/RobotAction")