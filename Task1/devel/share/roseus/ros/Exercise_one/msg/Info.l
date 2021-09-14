;; Auto-generated. Do not edit!


(when (boundp 'Exercise_one::Info)
  (if (not (find-package "EXERCISE_ONE"))
    (make-package "EXERCISE_ONE"))
  (shadow 'Info (find-package "EXERCISE_ONE")))
(unless (find-package "EXERCISE_ONE::INFO")
  (make-package "EXERCISE_ONE::INFO"))

(in-package "ROS")
;;//! \htmlinclude Info.msg.html


(defclass Exercise_one::Info
  :super ros::object
  :slots (_name _age _height ))

(defmethod Exercise_one::Info
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _height (round __height))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int8 _age
    1
    ;; int32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _age
       (write-byte _age s)
     ;; int32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _age 127) (setq _age (- _age 256)))
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get Exercise_one::Info :md5sum-) "c9ff281cbd003aff395267934689225f")
(setf (get Exercise_one::Info :datatype-) "Exercise_one/Info")
(setf (get Exercise_one::Info :definition-)
      "string name
int8 age
int32 height
")



(provide :Exercise_one/Info "c9ff281cbd003aff395267934689225f")


