; Auto-generated. Do not edit!


(cl:in-package pan_tilt_description-srv)


;//! \htmlinclude sum-request.msg.html

(cl:defclass <sum-request> (roslisp-msg-protocol:ros-message)
  ((frame_a
    :reader frame_a
    :initarg :frame_a
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (frame_b
    :reader frame_b
    :initarg :frame_b
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass sum-request (<sum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pan_tilt_description-srv:<sum-request> is deprecated: use pan_tilt_description-srv:sum-request instead.")))

(cl:ensure-generic-function 'frame_a-val :lambda-list '(m))
(cl:defmethod frame_a-val ((m <sum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pan_tilt_description-srv:frame_a-val is deprecated.  Use pan_tilt_description-srv:frame_a instead.")
  (frame_a m))

(cl:ensure-generic-function 'frame_b-val :lambda-list '(m))
(cl:defmethod frame_b-val ((m <sum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pan_tilt_description-srv:frame_b-val is deprecated.  Use pan_tilt_description-srv:frame_b instead.")
  (frame_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sum-request>) ostream)
  "Serializes a message object of type '<sum-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frame_a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frame_b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sum-request>) istream)
  "Deserializes a message object of type '<sum-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frame_a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frame_b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sum-request>)))
  "Returns string type for a service object of type '<sum-request>"
  "pan_tilt_description/sumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum-request)))
  "Returns string type for a service object of type 'sum-request"
  "pan_tilt_description/sumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sum-request>)))
  "Returns md5sum for a message object of type '<sum-request>"
  "37cb92532aa956fd8be41d523af9c227")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sum-request)))
  "Returns md5sum for a message object of type 'sum-request"
  "37cb92532aa956fd8be41d523af9c227")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sum-request>)))
  "Returns full string definition for message of type '<sum-request>"
  (cl:format cl:nil "std_msgs/String frame_a~%std_msgs/String frame_b~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sum-request)))
  "Returns full string definition for message of type 'sum-request"
  (cl:format cl:nil "std_msgs/String frame_a~%std_msgs/String frame_b~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sum-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frame_a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frame_b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sum-request
    (cl:cons ':frame_a (frame_a msg))
    (cl:cons ':frame_b (frame_b msg))
))
;//! \htmlinclude sum-response.msg.html

(cl:defclass <sum-response> (roslisp-msg-protocol:ros-message)
  ((pose_
    :reader pose_
    :initarg :pose_
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass sum-response (<sum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pan_tilt_description-srv:<sum-response> is deprecated: use pan_tilt_description-srv:sum-response instead.")))

(cl:ensure-generic-function 'pose_-val :lambda-list '(m))
(cl:defmethod pose_-val ((m <sum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pan_tilt_description-srv:pose_-val is deprecated.  Use pan_tilt_description-srv:pose_ instead.")
  (pose_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sum-response>) ostream)
  "Serializes a message object of type '<sum-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sum-response>) istream)
  "Deserializes a message object of type '<sum-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sum-response>)))
  "Returns string type for a service object of type '<sum-response>"
  "pan_tilt_description/sumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum-response)))
  "Returns string type for a service object of type 'sum-response"
  "pan_tilt_description/sumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sum-response>)))
  "Returns md5sum for a message object of type '<sum-response>"
  "37cb92532aa956fd8be41d523af9c227")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sum-response)))
  "Returns md5sum for a message object of type 'sum-response"
  "37cb92532aa956fd8be41d523af9c227")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sum-response>)))
  "Returns full string definition for message of type '<sum-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose_~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sum-response)))
  "Returns full string definition for message of type 'sum-response"
  (cl:format cl:nil "geometry_msgs/Pose pose_~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sum-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sum-response
    (cl:cons ':pose_ (pose_ msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sum)))
  'sum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sum)))
  'sum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum)))
  "Returns string type for a service object of type '<sum>"
  "pan_tilt_description/sum")