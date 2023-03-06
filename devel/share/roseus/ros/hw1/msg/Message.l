;; Auto-generated. Do not edit!


(when (boundp 'hw1::Message)
  (if (not (find-package "HW1"))
    (make-package "HW1"))
  (shadow 'Message (find-package "HW1")))
(unless (find-package "HW1::MESSAGE")
  (make-package "HW1::MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude Message.msg.html


(defclass hw1::Message
  :super ros::object
  :slots (_message _sid ))

(defmethod hw1::Message
  (:init
   (&key
    ((:message __message) "")
    ((:sid __sid) 0)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _sid (round __sid))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:sid
   (&optional __sid)
   (if __sid (setq _sid __sid)) _sid)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; int32 _sid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int32 _sid
       (write-long _sid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _sid
     (setq _sid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hw1::Message :md5sum-) "59e1119311361fcdf825364a68bdb07e")
(setf (get hw1::Message :datatype-) "hw1/Message")
(setf (get hw1::Message :definition-)
      "string message
int32 sid

")



(provide :hw1/Message "59e1119311361fcdf825364a68bdb07e")


