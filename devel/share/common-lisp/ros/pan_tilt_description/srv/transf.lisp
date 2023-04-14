; Auto-generated. Do not edit!


(cl:in-package pan_tilt_description-srv)


;//! \htmlinclude transf-request.msg.html

(cl:defclass <transf-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass transf-request (<transf-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <transf-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'transf-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pan_tilt_description-srv:<transf-request> is deprecated: use pan_tilt_description-srv:transf-request instead.")))

(cl:ensure-generic-function 'frame_a-val :lambda-list '(m))
(cl:defmethod frame_a-val ((m <transf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pan_tilt_description-srv:frame_a-val is deprecated.  Use pan_tilt_description-srv:frame_a instead.")
  (frame_a m))

(cl:ensure-generic-function 'frame_b-val :lambda-list '(m))
(cl:defmethod frame_b-val ((m <transf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pan_tilt_description-srv:frame_b-val is deprecated.  Use pan_tilt_description-srv:frame_b instead.")
  (frame_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <transf-request>) ostream)
  "Serializes a message object of type '<transf-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frame_a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frame_b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <transf-request>) istream)
  "Deserializes a message object of type '<transf-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frame_a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frame_b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<transf-request>)))
  "Returns string type for a service object of type '<transf-request>"
  "pan_tilt_description/transfRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'transf-request)))
  "Returns string type for a service object of type 'transf-request"
  "pan_tilt_description/transfRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<transf-request>)))
  "Returns md5sum for a message object of type '<transf-request>"
  "f4f8a27149783d8b27548ce33c934862")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'transf-request)))
  "Returns md5sum for a message object of type 'transf-request"
  "f4f8a27149783d8b27548ce33c934862")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<transf-request>)))
  "Returns full string definition for message of type '<transf-request>"
  (cl:format cl:nil "std_msgs/String frame_a~%std_msgs/String frame_b~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'transf-request)))
  "Returns full string definition for message of type 'transf-request"
  (cl:format cl:nil "std_msgs/String frame_a~%std_msgs/String frame_b~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <transf-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frame_a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frame_b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <transf-request>))
  "Converts a ROS message object to a list"
  (cl:list 'transf-request
    (cl:cons ':frame_a (frame_a msg))
    (cl:cons ':frame_b (frame_b msg))
))
;//! \htmlinclude transf-response.msg.html

(cl:defclass <transf-response> (roslisp-msg-protocol:ros-message)
  ((transf
    :reader transf
    :initarg :transf
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass transf-response (<transf-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <transf-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'transf-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pan_tilt_description-srv:<transf-response> is deprecated: use pan_tilt_description-srv:transf-response instead.")))

(cl:ensure-generic-function 'transf-val :lambda-list '(m))
(cl:defmethod transf-val ((m <transf-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pan_tilt_description-srv:transf-val is deprecated.  Use pan_tilt_description-srv:transf instead.")
  (transf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <transf-response>) ostream)
  "Serializes a message object of type '<transf-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transf) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <transf-response>) istream)
  "Deserializes a message object of type '<transf-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transf) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<transf-response>)))
  "Returns string type for a service object of type '<transf-response>"
  "pan_tilt_description/transfResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'transf-response)))
  "Returns string type for a service object of type 'transf-response"
  "pan_tilt_description/transfResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<transf-response>)))
  "Returns md5sum for a message object of type '<transf-response>"
  "f4f8a27149783d8b27548ce33c934862")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'transf-response)))
  "Returns md5sum for a message object of type 'transf-response"
  "f4f8a27149783d8b27548ce33c934862")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<transf-response>)))
  "Returns full string definition for message of type '<transf-response>"
  (cl:format cl:nil "geometry_msgs/Pose transf~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'transf-response)))
  "Returns full string definition for message of type 'transf-response"
  (cl:format cl:nil "geometry_msgs/Pose transf~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <transf-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <transf-response>))
  "Converts a ROS message object to a list"
  (cl:list 'transf-response
    (cl:cons ':transf (transf msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'transf)))
  'transf-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'transf)))
  'transf-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'transf)))
  "Returns string type for a service object of type '<transf>"
  "pan_tilt_description/transf")