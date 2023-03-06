; Auto-generated. Do not edit!


(cl:in-package hw1-msg)


;//! \htmlinclude Message.msg.html

(cl:defclass <Message> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (sid
    :reader sid
    :initarg :sid
    :type cl:integer
    :initform 0))
)

(cl:defclass Message (<Message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-msg:<Message> is deprecated: use hw1-msg:Message instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-msg:message-val is deprecated.  Use hw1-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'sid-val :lambda-list '(m))
(cl:defmethod sid-val ((m <Message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-msg:sid-val is deprecated.  Use hw1-msg:sid instead.")
  (sid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Message>) ostream)
  "Serializes a message object of type '<Message>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'sid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Message>) istream)
  "Deserializes a message object of type '<Message>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Message>)))
  "Returns string type for a message object of type '<Message>"
  "hw1/Message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Message)))
  "Returns string type for a message object of type 'Message"
  "hw1/Message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Message>)))
  "Returns md5sum for a message object of type '<Message>"
  "59e1119311361fcdf825364a68bdb07e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Message)))
  "Returns md5sum for a message object of type 'Message"
  "59e1119311361fcdf825364a68bdb07e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Message>)))
  "Returns full string definition for message of type '<Message>"
  (cl:format cl:nil "string message~%int32 sid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Message)))
  "Returns full string definition for message of type 'Message"
  (cl:format cl:nil "string message~%int32 sid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Message>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Message>))
  "Converts a ROS message object to a list"
  (cl:list 'Message
    (cl:cons ':message (message msg))
    (cl:cons ':sid (sid msg))
))
