;; Auto-generated. Do not edit!


(when (boundp 'model::model)
  (if (not (find-package "MODEL"))
    (make-package "MODEL"))
  (shadow 'model (find-package "MODEL")))
(unless (find-package "MODEL::MODEL")
  (make-package "MODEL::MODEL"))

(in-package "ROS")
;;//! \htmlinclude model.msg.html


(defclass model::model
  :super ros::object
  :slots (_velocity _delta _beta _xc_dot _ycdot _theta_dot _delta_dot _xc _yc _theta ))

(defmethod model::model
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:delta __delta) 0.0)
    ((:beta __beta) 0.0)
    ((:xc_dot __xc_dot) 0.0)
    ((:ycdot __ycdot) 0.0)
    ((:theta_dot __theta_dot) 0.0)
    ((:delta_dot __delta_dot) 0.0)
    ((:xc __xc) 0.0)
    ((:yc __yc) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _delta (float __delta))
   (setq _beta (float __beta))
   (setq _xc_dot (float __xc_dot))
   (setq _ycdot (float __ycdot))
   (setq _theta_dot (float __theta_dot))
   (setq _delta_dot (float __delta_dot))
   (setq _xc (float __xc))
   (setq _yc (float __yc))
   (setq _theta (float __theta))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:delta
   (&optional __delta)
   (if __delta (setq _delta __delta)) _delta)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:xc_dot
   (&optional __xc_dot)
   (if __xc_dot (setq _xc_dot __xc_dot)) _xc_dot)
  (:ycdot
   (&optional __ycdot)
   (if __ycdot (setq _ycdot __ycdot)) _ycdot)
  (:theta_dot
   (&optional __theta_dot)
   (if __theta_dot (setq _theta_dot __theta_dot)) _theta_dot)
  (:delta_dot
   (&optional __delta_dot)
   (if __delta_dot (setq _delta_dot __delta_dot)) _delta_dot)
  (:xc
   (&optional __xc)
   (if __xc (setq _xc __xc)) _xc)
  (:yc
   (&optional __yc)
   (if __yc (setq _yc __yc)) _yc)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float64 _velocity
    8
    ;; float64 _delta
    8
    ;; float64 _beta
    8
    ;; float64 _xc_dot
    8
    ;; float64 _ycdot
    8
    ;; float64 _theta_dot
    8
    ;; float64 _delta_dot
    8
    ;; float64 _xc
    8
    ;; float64 _yc
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _delta
       (sys::poke _delta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _beta
       (sys::poke _beta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xc_dot
       (sys::poke _xc_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ycdot
       (sys::poke _ycdot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_dot
       (sys::poke _theta_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _delta_dot
       (sys::poke _delta_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xc
       (sys::poke _xc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yc
       (sys::poke _yc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _delta
     (setq _delta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _beta
     (setq _beta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xc_dot
     (setq _xc_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ycdot
     (setq _ycdot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta_dot
     (setq _theta_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _delta_dot
     (setq _delta_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xc
     (setq _xc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yc
     (setq _yc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get model::model :md5sum-) "d6e1c30125128374c4d6c2133db77f6f")
(setf (get model::model :datatype-) "model/model")
(setf (get model::model :definition-)
      "float64 velocity
float64 delta
float64 beta
float64 xc_dot
float64 ycdot
float64 theta_dot
float64 delta_dot
float64 xc
float64 yc
float64 theta

")



(provide :model/model "d6e1c30125128374c4d6c2133db77f6f")


