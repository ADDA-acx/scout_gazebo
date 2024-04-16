
(cl:in-package :asdf)

(defsystem "scout_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ScoutLightCmd" :depends-on ("_package_ScoutLightCmd"))
    (:file "_package_ScoutLightCmd" :depends-on ("_package"))
    (:file "ScoutLightState" :depends-on ("_package_ScoutLightState"))
    (:file "_package_ScoutLightState" :depends-on ("_package"))
    (:file "ScoutMotorState" :depends-on ("_package_ScoutMotorState"))
    (:file "_package_ScoutMotorState" :depends-on ("_package"))
    (:file "ScoutStatus" :depends-on ("_package_ScoutStatus"))
    (:file "_package_ScoutStatus" :depends-on ("_package"))
  ))