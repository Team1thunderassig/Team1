// Auto-generated. Do not edit!

// (in-package VehicleDataReader.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CANMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.messageId = null;
      this.vehicleSpeed = null;
      this.engineSpeed = null;
      this.driverdoor_open = null;
      this.frontPassengerDoor_open = null;
      this.rearLeftDoor_open = null;
      this.rearRightDoor_open = null;
      this.FrameTickCountSysReadTime = null;
    }
    else {
      if (initObj.hasOwnProperty('messageId')) {
        this.messageId = initObj.messageId
      }
      else {
        this.messageId = 0;
      }
      if (initObj.hasOwnProperty('vehicleSpeed')) {
        this.vehicleSpeed = initObj.vehicleSpeed
      }
      else {
        this.vehicleSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('engineSpeed')) {
        this.engineSpeed = initObj.engineSpeed
      }
      else {
        this.engineSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('driverdoor_open')) {
        this.driverdoor_open = initObj.driverdoor_open
      }
      else {
        this.driverdoor_open = false;
      }
      if (initObj.hasOwnProperty('frontPassengerDoor_open')) {
        this.frontPassengerDoor_open = initObj.frontPassengerDoor_open
      }
      else {
        this.frontPassengerDoor_open = false;
      }
      if (initObj.hasOwnProperty('rearLeftDoor_open')) {
        this.rearLeftDoor_open = initObj.rearLeftDoor_open
      }
      else {
        this.rearLeftDoor_open = false;
      }
      if (initObj.hasOwnProperty('rearRightDoor_open')) {
        this.rearRightDoor_open = initObj.rearRightDoor_open
      }
      else {
        this.rearRightDoor_open = false;
      }
      if (initObj.hasOwnProperty('FrameTickCountSysReadTime')) {
        this.FrameTickCountSysReadTime = initObj.FrameTickCountSysReadTime
      }
      else {
        this.FrameTickCountSysReadTime = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CANMessage
    // Serialize message field [messageId]
    bufferOffset = _serializer.uint32(obj.messageId, buffer, bufferOffset);
    // Serialize message field [vehicleSpeed]
    bufferOffset = _serializer.float64(obj.vehicleSpeed, buffer, bufferOffset);
    // Serialize message field [engineSpeed]
    bufferOffset = _serializer.float64(obj.engineSpeed, buffer, bufferOffset);
    // Serialize message field [driverdoor_open]
    bufferOffset = _serializer.bool(obj.driverdoor_open, buffer, bufferOffset);
    // Serialize message field [frontPassengerDoor_open]
    bufferOffset = _serializer.bool(obj.frontPassengerDoor_open, buffer, bufferOffset);
    // Serialize message field [rearLeftDoor_open]
    bufferOffset = _serializer.bool(obj.rearLeftDoor_open, buffer, bufferOffset);
    // Serialize message field [rearRightDoor_open]
    bufferOffset = _serializer.bool(obj.rearRightDoor_open, buffer, bufferOffset);
    // Serialize message field [FrameTickCountSysReadTime]
    bufferOffset = _serializer.time(obj.FrameTickCountSysReadTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CANMessage
    let len;
    let data = new CANMessage(null);
    // Deserialize message field [messageId]
    data.messageId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [vehicleSpeed]
    data.vehicleSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [engineSpeed]
    data.engineSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [driverdoor_open]
    data.driverdoor_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frontPassengerDoor_open]
    data.frontPassengerDoor_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rearLeftDoor_open]
    data.rearLeftDoor_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rearRightDoor_open]
    data.rearRightDoor_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [FrameTickCountSysReadTime]
    data.FrameTickCountSysReadTime = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'VehicleDataReader/CANMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '507c66b05d36e581207104e7f7c9ea27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 messageId
    float64 vehicleSpeed
    float64 engineSpeed
    bool driverdoor_open
    bool frontPassengerDoor_open
    bool rearLeftDoor_open
    bool rearRightDoor_open
    time FrameTickCountSysReadTime
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CANMessage(null);
    if (msg.messageId !== undefined) {
      resolved.messageId = msg.messageId;
    }
    else {
      resolved.messageId = 0
    }

    if (msg.vehicleSpeed !== undefined) {
      resolved.vehicleSpeed = msg.vehicleSpeed;
    }
    else {
      resolved.vehicleSpeed = 0.0
    }

    if (msg.engineSpeed !== undefined) {
      resolved.engineSpeed = msg.engineSpeed;
    }
    else {
      resolved.engineSpeed = 0.0
    }

    if (msg.driverdoor_open !== undefined) {
      resolved.driverdoor_open = msg.driverdoor_open;
    }
    else {
      resolved.driverdoor_open = false
    }

    if (msg.frontPassengerDoor_open !== undefined) {
      resolved.frontPassengerDoor_open = msg.frontPassengerDoor_open;
    }
    else {
      resolved.frontPassengerDoor_open = false
    }

    if (msg.rearLeftDoor_open !== undefined) {
      resolved.rearLeftDoor_open = msg.rearLeftDoor_open;
    }
    else {
      resolved.rearLeftDoor_open = false
    }

    if (msg.rearRightDoor_open !== undefined) {
      resolved.rearRightDoor_open = msg.rearRightDoor_open;
    }
    else {
      resolved.rearRightDoor_open = false
    }

    if (msg.FrameTickCountSysReadTime !== undefined) {
      resolved.FrameTickCountSysReadTime = msg.FrameTickCountSysReadTime;
    }
    else {
      resolved.FrameTickCountSysReadTime = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = CANMessage;
