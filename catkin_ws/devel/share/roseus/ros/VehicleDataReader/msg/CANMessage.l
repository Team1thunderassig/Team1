;; Auto-generated. Do not edit!


(when (boundp 'VehicleDataReader::CANMessage)
  (if (not (find-package "VEHICLEDATAREADER"))
    (make-package "VEHICLEDATAREADER"))
  (shadow 'CANMessage (find-package "VEHICLEDATAREADER")))
(unless (find-package "VEHICLEDATAREADER::CANMESSAGE")
  (make-package "VEHICLEDATAREADER::CANMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude CANMessage.msg.html


(defclass VehicleDataReader::CANMessage
  :super ros::object
  :slots (_messageId _vehicleSpeed _engineSpeed _driverdoor_open _frontPassengerDoor_open _rearLeftDoor_open _rearRightDoor_open _FrameTickCountSysReadTime ))

(defmethod VehicleDataReader::CANMessage
  (:init
   (&key
    ((:messageId __messageId) 0)
    ((:vehicleSpeed __vehicleSpeed) 0.0)
    ((:engineSpeed __engineSpeed) 0.0)
    ((:driverdoor_open __driverdoor_open) nil)
    ((:frontPassengerDoor_open __frontPassengerDoor_open) nil)
    ((:rearLeftDoor_open __rearLeftDoor_open) nil)
    ((:rearRightDoor_open __rearRightDoor_open) nil)
    ((:FrameTickCountSysReadTime __FrameTickCountSysReadTime) (instance ros::time :init))
    )
   (send-super :init)
   (setq _messageId (round __messageId))
   (setq _vehicleSpeed (float __vehicleSpeed))
   (setq _engineSpeed (float __engineSpeed))
   (setq _driverdoor_open __driverdoor_open)
   (setq _frontPassengerDoor_open __frontPassengerDoor_open)
   (setq _rearLeftDoor_open __rearLeftDoor_open)
   (setq _rearRightDoor_open __rearRightDoor_open)
   (setq _FrameTickCountSysReadTime __FrameTickCountSysReadTime)
   self)
  (:messageId
   (&optional __messageId)
   (if __messageId (setq _messageId __messageId)) _messageId)
  (:vehicleSpeed
   (&optional __vehicleSpeed)
   (if __vehicleSpeed (setq _vehicleSpeed __vehicleSpeed)) _vehicleSpeed)
  (:engineSpeed
   (&optional __engineSpeed)
   (if __engineSpeed (setq _engineSpeed __engineSpeed)) _engineSpeed)
  (:driverdoor_open
   (&optional __driverdoor_open)
   (if __driverdoor_open (setq _driverdoor_open __driverdoor_open)) _driverdoor_open)
  (:frontPassengerDoor_open
   (&optional __frontPassengerDoor_open)
   (if __frontPassengerDoor_open (setq _frontPassengerDoor_open __frontPassengerDoor_open)) _frontPassengerDoor_open)
  (:rearLeftDoor_open
   (&optional __rearLeftDoor_open)
   (if __rearLeftDoor_open (setq _rearLeftDoor_open __rearLeftDoor_open)) _rearLeftDoor_open)
  (:rearRightDoor_open
   (&optional __rearRightDoor_open)
   (if __rearRightDoor_open (setq _rearRightDoor_open __rearRightDoor_open)) _rearRightDoor_open)
  (:FrameTickCountSysReadTime
   (&optional __FrameTickCountSysReadTime)
   (if __FrameTickCountSysReadTime (setq _FrameTickCountSysReadTime __FrameTickCountSysReadTime)) _FrameTickCountSysReadTime)
  (:serialization-length
   ()
   (+
    ;; uint32 _messageId
    4
    ;; float64 _vehicleSpeed
    8
    ;; float64 _engineSpeed
    8
    ;; bool _driverdoor_open
    1
    ;; bool _frontPassengerDoor_open
    1
    ;; bool _rearLeftDoor_open
    1
    ;; bool _rearRightDoor_open
    1
    ;; time _FrameTickCountSysReadTime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _messageId
       (write-long _messageId s)
     ;; float64 _vehicleSpeed
       (sys::poke _vehicleSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _engineSpeed
       (sys::poke _engineSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _driverdoor_open
       (if _driverdoor_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _frontPassengerDoor_open
       (if _frontPassengerDoor_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _rearLeftDoor_open
       (if _rearLeftDoor_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _rearRightDoor_open
       (if _rearRightDoor_open (write-byte -1 s) (write-byte 0 s))
     ;; time _FrameTickCountSysReadTime
       (write-long (send _FrameTickCountSysReadTime :sec) s) (write-long (send _FrameTickCountSysReadTime :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _messageId
     (setq _messageId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _vehicleSpeed
     (setq _vehicleSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _engineSpeed
     (setq _engineSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _driverdoor_open
     (setq _driverdoor_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _frontPassengerDoor_open
     (setq _frontPassengerDoor_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rearLeftDoor_open
     (setq _rearLeftDoor_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rearRightDoor_open
     (setq _rearRightDoor_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _FrameTickCountSysReadTime
     (send _FrameTickCountSysReadTime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _FrameTickCountSysReadTime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get VehicleDataReader::CANMessage :md5sum-) "507c66b05d36e581207104e7f7c9ea27")
(setf (get VehicleDataReader::CANMessage :datatype-) "VehicleDataReader/CANMessage")
(setf (get VehicleDataReader::CANMessage :definition-)
      "uint32 messageId
float64 vehicleSpeed
float64 engineSpeed
bool driverdoor_open
bool frontPassengerDoor_open
bool rearLeftDoor_open
bool rearRightDoor_open
time FrameTickCountSysReadTime


")



(provide :VehicleDataReader/CANMessage "507c66b05d36e581207104e7f7c9ea27")


