#! /usr/bin/env python3
from genpy import message
import rospy
from std_msgs.msg import String 

def cb(msg):
    messagee = msg.data
    arr = messagee.split(',')
    rospy.loginfo("\n%s\n%s\n%s",arr[0],arr[1],arr[2])

def listener():
    rospy.init_node('data_processing')
    rospy.Subscriber('/raw_data', String, callback=cb)
    rospy.spin()

if __name__ == "__main__":
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
