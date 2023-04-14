
(cl:in-package :asdf)

(defsystem "sevendof_man-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "transf" :depends-on ("_package_transf"))
    (:file "_package_transf" :depends-on ("_package"))
  ))