;; Auto-generated. Do not edit!


(when (boundp 'pan_tilt_description::sum)
  (if (not (find-package "PAN_TILT_DESCRIPTION"))
    (make-package "PAN_TILT_DESCRIPTION"))
  (shadow 'sum (find-package "PAN_TILT_DESCRIPTION")))
(unless (find-package "PAN_TILT_DESCRIPTION::SUM")
  (make-package "PAN_TILT_DESCRIPTION::SUM"))
(unless (find-package "PAN_TILT_DESCRIPTION::SUMREQUEST")
  (make-package "PAN_TILT_DESCRIPTION::SUMREQUEST"))
(unless (find-package "PAN_TILT_DESCRIPTION::SUMRESPONSE")
  (make-package "PAN_TILT_DESCRIPTION::SUMRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pan_tilt_description::sumRequest
  :super ros::object
  :slots (_frame_a _frame_b ))

(defmethod pan_tilt_description::sumRequest
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

(defclass pan_tilt_description::sumResponse
  :super ros::object
  :slots (_pose_ ))

(defmethod pan_tilt_description::sumResponse
  (:init
   (&key
    ((:pose_ __pose_) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose_ __pose_)
   self)
  (:pose_
   (&rest __pose_)
   (if (keywordp (car __pose_))
       (send* _pose_ __pose_)
     (progn
       (if __pose_ (setq _pose_ (car __pose_)))
       _pose_)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_
    (send _pose_ :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_
       (send _pose_ :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_
     (send _pose_ :deserialize buf ptr-) (incf ptr- (send _pose_ :serialization-length))
   ;;
   self)
  )

(defclass pan_tilt_description::sum
  :super ros::object
  :slots ())

(setf (get pan_tilt_description::sum :md5sum-) "37cb92532aa956fd8be41d523af9c227")
(setf (get pan_tilt_description::sum :datatype-) "pan_tilt_description/sum")
(setf (get pan_tilt_description::sum :request) pan_tilt_description::sumRequest)
(setf (get pan_tilt_description::sum :response) pan_tilt_description::sumResponse)

(defmethod pan_tilt_description::sumRequest
  (:response () (instance pan_tilt_description::sumResponse :init)))

(setf (get pan_tilt_description::sumRequest :md5sum-) "37cb92532aa956fd8be41d523af9c227")
(setf (get pan_tilt_description::sumRequest :datatype-) "pan_tilt_description/sumRequest")
(setf (get pan_tilt_description::sumRequest :definition-)
      "std_msgs/String frame_a
std_msgs/String frame_b

================================================================================
MSG: std_msgs/String
string data
---
geometry_msgs/Pose pose_

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

(setf (get pan_tilt_description::sumResponse :md5sum-) "37cb92532aa956fd8be41d523af9c227")
(setf (get pan_tilt_description::sumResponse :datatype-) "pan_tilt_description/sumResponse")
(setf (get pan_tilt_description::sumResponse :definition-)
      "std_msgs/String frame_a
std_msgs/String frame_b

================================================================================
MSG: std_msgs/String
string data
---
geometry_msgs/Pose pose_

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



(provide :pan_tilt_description/sum "37cb92532aa956fd8be41d523af9c227")


