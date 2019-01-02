; Auto-generated. Do not edit!


(cl:in-package VehicleDataReader-msg)


;//! \htmlinclude CANMessage.msg.html

(cl:defclass <CANMessage> (roslisp-msg-protocol:ros-message)
  ((messageId
    :reader messageId
    :initarg :messageId
    :type cl:integer
    :initform 0)
   (vehicleSpeed
    :reader vehicleSpeed
    :initarg :vehicleSpeed
    :type cl:float
    :initform 0.0)
   (engineSpeed
    :reader engineSpeed
    :initarg :engineSpeed
    :type cl:float
    :initform 0.0)
   (driverdoor_open
    :reader driverdoor_open
    :initarg :driverdoor_open
    :type cl:boolean
    :initform cl:nil)
   (frontPassengerDoor_open
    :reader frontPassengerDoor_open
    :initarg :frontPassengerDoor_open
    :type cl:boolean
    :initform cl:nil)
   (rearLeftDoor_open
    :reader rearLeftDoor_open
    :initarg :rearLeftDoor_open
    :type cl:boolean
    :initform cl:nil)
   (rearRightDoor_open
    :reader rearRightDoor_open
    :initarg :rearRightDoor_open
    :type cl:boolean
    :initform cl:nil)
   (FrameTickCountSysReadTime
    :reader FrameTickCountSysReadTime
    :initarg :FrameTickCountSysReadTime
    :type cl:real
    :initform 0))
)

(cl:defclass CANMessage (<CANMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CANMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CANMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name VehicleDataReader-msg:<CANMessage> is deprecated: use VehicleDataReader-msg:CANMessage instead.")))

(cl:ensure-generic-function 'messageId-val :lambda-list '(m))
(cl:defmethod messageId-val ((m <CANMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader VehicleDataReader-msg:messageId-val is deprecated.  Use VehicleDataReader-msg:messageId instead.")
  (messageId m))

(cl:ensure-generic-function 'vehicleSpeed-val :lambda-list '(m))
(cl:defmethod vehicleSpeed-val ((m <CANMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader VehicleDataReader-msg:vehicleSpeed-val is deprecated.  Use VehicleDataReader-msg:vehicleSpeed instead.")
  (vehicleSpeed m))

(cl:ensure-generic-function 'engineSpeed-val :lambda-list '(m))
(cl:defmethod engineSpeed-val ((m <CANMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader VehicleDataReader-msg:engineSpeed-val is deprecated.  Use VehicleDataReader-msg:engineSpeed instead.")
  (engineSpeed m))

(cl:ensure-generic-function 'driverdoor_open-val :lambda-list '(m))
(cl:defmethod driverdoor_open-val ((m <CANMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader VehicleDataReader-msg:driverdoor_open-val is deprecated.  Use VehicleDataReader-msg:driverdoor_open instead.")
  (driverdoor_open m))

(cl:ensure-generic-function 'frontPassengerDoor_open-val :lambda-list '(m))
(cl:defmethod frontPassengerDoor_open-val ((m <CANMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader VehicleDataReader-msg:frontPassengerDoor_open-val is deprecated.  Use VehicleDataReader-msg:frontPassengerDoor_open instead.")
  (frontPassengerDoor_open m))

(cl:ensure-generic-function 'rearLeftDoor_open-val :lambda-list '(m))
(cl:defmethod rearLeftDoor_open-val ((m <CANMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader VehicleDataReader-msg:rearLeftDoor_open-val is deprecated.  Use VehicleDataReader-msg:rearLeftDoor_open instead.")
  (rearLeftDoor_open m))

(cl:ensure-generic-function 'rearRightDoor_open-val :lambda-list '(m))
(cl:defmethod rearRightDoor_open-val ((m <CANMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader VehicleDataReader-msg:rearRightDoor_open-val is deprecated.  Use VehicleDataReader-msg:rearRightDoor_open instead.")
  (rearRightDoor_open m))

(cl:ensure-generic-function 'FrameTickCountSysReadTime-val :lambda-list '(m))
(cl:defmethod FrameTickCountSysReadTime-val ((m <CANMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader VehicleDataReader-msg:FrameTickCountSysReadTime-val is deprecated.  Use VehicleDataReader-msg:FrameTickCountSysReadTime instead.")
  (FrameTickCountSysReadTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CANMessage>) ostream)
  "Serializes a message object of type '<CANMessage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'messageId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'messageId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'messageId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'messageId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vehicleSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'engineSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driverdoor_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'frontPassengerDoor_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rearLeftDoor_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rearRightDoor_open) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'FrameTickCountSysReadTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'FrameTickCountSysReadTime) (cl:floor (cl:slot-value msg 'FrameTickCountSysReadTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CANMessage>) istream)
  "Deserializes a message object of type '<CANMessage>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'messageId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'messageId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'messageId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'messageId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicleSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engineSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'driverdoor_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'frontPassengerDoor_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rearLeftDoor_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rearRightDoor_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'FrameTickCountSysReadTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CANMessage>)))
  "Returns string type for a message object of type '<CANMessage>"
  "VehicleDataReader/CANMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CANMessage)))
  "Returns string type for a message object of type 'CANMessage"
  "VehicleDataReader/CANMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CANMessage>)))
  "Returns md5sum for a message object of type '<CANMessage>"
  "507c66b05d36e581207104e7f7c9ea27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CANMessage)))
  "Returns md5sum for a message object of type 'CANMessage"
  "507c66b05d36e581207104e7f7c9ea27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CANMessage>)))
  "Returns full string definition for message of type '<CANMessage>"
  (cl:format cl:nil "uint32 messageId~%float64 vehicleSpeed~%float64 engineSpeed~%bool driverdoor_open~%bool frontPassengerDoor_open~%bool rearLeftDoor_open~%bool rearRightDoor_open~%time FrameTickCountSysReadTime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CANMessage)))
  "Returns full string definition for message of type 'CANMessage"
  (cl:format cl:nil "uint32 messageId~%float64 vehicleSpeed~%float64 engineSpeed~%bool driverdoor_open~%bool frontPassengerDoor_open~%bool rearLeftDoor_open~%bool rearRightDoor_open~%time FrameTickCountSysReadTime~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CANMessage>))
  (cl:+ 0
     4
     8
     8
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CANMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'CANMessage
    (cl:cons ':messageId (messageId msg))
    (cl:cons ':vehicleSpeed (vehicleSpeed msg))
    (cl:cons ':engineSpeed (engineSpeed msg))
    (cl:cons ':driverdoor_open (driverdoor_open msg))
    (cl:cons ':frontPassengerDoor_open (frontPassengerDoor_open msg))
    (cl:cons ':rearLeftDoor_open (rearLeftDoor_open msg))
    (cl:cons ':rearRightDoor_open (rearRightDoor_open msg))
    (cl:cons ':FrameTickCountSysReadTime (FrameTickCountSysReadTime msg))
))
