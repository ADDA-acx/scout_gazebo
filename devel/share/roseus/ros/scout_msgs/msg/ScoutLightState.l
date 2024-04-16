;; Auto-generated. Do not edit!


(when (boundp 'scout_msgs::ScoutLightState)
  (if (not (find-package "SCOUT_MSGS"))
    (make-package "SCOUT_MSGS"))
  (shadow 'ScoutLightState (find-package "SCOUT_MSGS")))
(unless (find-package "SCOUT_MSGS::SCOUTLIGHTSTATE")
  (make-package "SCOUT_MSGS::SCOUTLIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ScoutLightState.msg.html


(defclass scout_msgs::ScoutLightState
  :super ros::object
  :slots (_mode _custom_value ))

(defmethod scout_msgs::ScoutLightState
  (:init
   (&key
    ((:mode __mode) 0)
    ((:custom_value __custom_value) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _custom_value (round __custom_value))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:custom_value
   (&optional __custom_value)
   (if __custom_value (setq _custom_value __custom_value)) _custom_value)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _custom_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _custom_value
       (write-byte _custom_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _custom_value
     (setq _custom_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scout_msgs::ScoutLightState :md5sum-) "51866248399dda20e62f6b250914288e")
(setf (get scout_msgs::ScoutLightState :datatype-) "scout_msgs/ScoutLightState")
(setf (get scout_msgs::ScoutLightState :definition-)
      "uint8 mode
uint8 custom_value
")



(provide :scout_msgs/ScoutLightState "51866248399dda20e62f6b250914288e")


