; Auto-generated. Do not edit!


(cl:in-package hw1-srv)


;//! \htmlinclude SumService-request.msg.html

(cl:defclass <SumService-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SumService-request (<SumService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-srv:<SumService-request> is deprecated: use hw1-srv:SumService-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SumService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:data-val is deprecated.  Use hw1-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumService-request>) ostream)
  "Serializes a message object of type '<SumService-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumService-request>) istream)
  "Deserializes a message object of type '<SumService-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumService-request>)))
  "Returns string type for a service object of type '<SumService-request>"
  "hw1/SumServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumService-request)))
  "Returns string type for a service object of type 'SumService-request"
  "hw1/SumServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumService-request>)))
  "Returns md5sum for a message object of type '<SumService-request>"
  "4a8b78d0bc5b95d47376deaeb16c7607")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumService-request)))
  "Returns md5sum for a message object of type 'SumService-request"
  "4a8b78d0bc5b95d47376deaeb16c7607")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumService-request>)))
  "Returns full string definition for message of type '<SumService-request>"
  (cl:format cl:nil "int64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumService-request)))
  "Returns full string definition for message of type 'SumService-request"
  (cl:format cl:nil "int64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumService-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SumService-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SumService-response.msg.html

(cl:defclass <SumService-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass SumService-response (<SumService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-srv:<SumService-response> is deprecated: use hw1-srv:SumService-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <SumService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:sum-val is deprecated.  Use hw1-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumService-response>) ostream)
  "Serializes a message object of type '<SumService-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumService-response>) istream)
  "Deserializes a message object of type '<SumService-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumService-response>)))
  "Returns string type for a service object of type '<SumService-response>"
  "hw1/SumServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumService-response)))
  "Returns string type for a service object of type 'SumService-response"
  "hw1/SumServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumService-response>)))
  "Returns md5sum for a message object of type '<SumService-response>"
  "4a8b78d0bc5b95d47376deaeb16c7607")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumService-response)))
  "Returns md5sum for a message object of type 'SumService-response"
  "4a8b78d0bc5b95d47376deaeb16c7607")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumService-response>)))
  "Returns full string definition for message of type '<SumService-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumService-response)))
  "Returns full string definition for message of type 'SumService-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumService-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SumService-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SumService)))
  'SumService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SumService)))
  'SumService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumService)))
  "Returns string type for a service object of type '<SumService>"
  "hw1/SumService")