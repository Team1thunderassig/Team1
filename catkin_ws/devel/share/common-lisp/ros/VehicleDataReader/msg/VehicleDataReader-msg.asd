
(cl:in-package :asdf)

(defsystem "VehicleDataReader-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CANMessage" :depends-on ("_package_CANMessage"))
    (:file "_package_CANMessage" :depends-on ("_package"))
    (:file "CANMessage" :depends-on ("_package_CANMessage"))
    (:file "_package_CANMessage" :depends-on ("_package"))
  ))