;; Auto-generated. Do not edit!


(when (boundp 'pan_tilt_description::transf)
  (if (not (find-package "PAN_TILT_DESCRIPTION"))
    (make-package "PAN_TILT_DESCRIPTION"))
  (shadow 'transf (find-package "PAN_TILT_DESCRIPTION")))
(unless (find-package "PAN_TILT_DESCRIPTION::TRANSF")
  (make-package "PAN_TILT_DESCRIPTION::TRANSF"))
(unless (find-package "PAN_TILT_DESCRIPTION::TRANSFREQUEST")
  (make-package "PAN_TILT_DESCRIPTION::TRANSFREQUEST"))
(unless (find-package "PAN_TILT_DESCRIPTION::TRANSFRESPONSE")
  (make-package "PAN_TILT_DESCRIPTION::TRANSFRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pan_tilt_description::transfRequest
  :super ros::object
  :slots (_frame_a _frame_b ))

(defmethod pan_tilt_description::transfRequest
  (:init
   (&key
    ((:frame_a __frame_a) (instance std_msgs::String :init))
    ((:frame_b __frame_b) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _frame_a __frame_a)
   (setq _frame_b __frame_b)
   self)
  (:frame_a
   (&rest __frame_a)
   (if (keywordp (car __frame_a))
       (send* _frame_a __frame_a)
     (progn
       (if __frame_a (setq _frame_a (car __frame_a)))
       _frame_a)))
  (:frame_b
   (&rest __frame_b)
   (if (keywordp (car __frame_b))
       (send* _frame_b __frame_b)
     (progn
       (if __frame_b (setq _frame_b (car __frame_b)))
       _frame_b)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _frame_a
    (send _frame_a :serialization-length)
    ;; std_msgs/String _frame_b
    (send _frame_b :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _frame_a
       (send _frame_a :serialize s)
     ;; std_msgs/String _frame_b
       (send _frame_b :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _frame_a
     (send _frame_a :deserialize buf ptr-) (incf ptr- (send _frame_a :serialization-length))
   ;; std_msgs/String _frame_b
     (send _frame_b :deserialize buf ptr-) (incf ptr- (send _frame_b :serialization-length))
   ;;
   self)
  )

(defclass pan_tilt_description::transfResponse
  :super ros::object
  :slots (_transf ))

(defmethod pan_tilt_description::transfResponse
  (:init
   (&key
    ((:transf __transf) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _transf __transf)
   self)
  (:transf
   (&rest __transf)
   (if (keywordp (car __transf))
       (send* _transf __transf)
     (progn
       (if __transf (setq _transf (car __transf)))
       _transf)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _transf
    (send _transf :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _transf
       (send _transf :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _transf
     (send _transf :deserialize buf ptr-) (incf ptr- (send _transf :serialization-length))
   ;;
   self)
  )

(defclass pan_tilt_description::transf
  :super ros::object
  :slots ())

(setf (get pan_tilt_description::transf :md5sum-) "f4f8a27149783d8b27548ce33c934862")
(setf (get pan_tilt_description::transf :datatype-) "pan_tilt_description/transf")
(setf (get pan_tilt_description::transf :request) pan_tilt_description::transfRequest)
(setf (get pan_tilt_description::transf :response) pan_tilt_description::transfResponse)

(defmethod pan_tilt_description::transfRequest
  (:response () (instance pan_tilt_description::transfResponse :init)))

(setf (get pan_tilt_description::transfRequest :md5sum-) "f4f8a27149783d8b27548ce33c934862")
(setf (get pan_tilt_description::transfRequest :datatype-) "pan_tilt_description/transfRequest")
(setf (get pan_tilt_description::transfRequest :definition-)
      "std_msgs/String frame_a
std_msgs/String frame_b

================================================================================
MSG: std_msgs/String
string data
---
geometry_msgs/Pose transf


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get pan_tilt_description::transfResponse :md5sum-) "f4f8a27149783d8b27548ce33c934862")
(setf (get pan_tilt_description::transfResponse :datatype-) "pan_tilt_description/transfResponse")
(setf (get pan_tilt_description::transfResponse :definition-)
      "std_msgs/String frame_a
std_msgs/String frame_b

================================================================================
MSG: std_msgs/String
string data
---
geometry_msgs/Pose transf


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :pan_tilt_description/transf "f4f8a27149783d8b27548ce33c934862")

