
(cl:in-package :asdf)

(defsystem "hw1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SumService" :depends-on ("_package_SumService"))
    (:file "_package_SumService" :depends-on ("_package"))
  ))