
(cl:in-package :asdf)

(defsystem "model-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "model" :depends-on ("_package_model"))
    (:file "_package_model" :depends-on ("_package"))
  ))