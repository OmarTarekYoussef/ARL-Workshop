
(cl:in-package :asdf)

(defsystem "Exercise_two-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Info2" :depends-on ("_package_Info2"))
    (:file "_package_Info2" :depends-on ("_package"))
  ))