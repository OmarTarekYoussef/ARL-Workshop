#! /usr/bin/env python3
import rospy
from std_msgs.msg import String
 
name   = input('Please Write your name ')
age    = input('Please Write your age ')
height = input('Please Write your height ')

def talk_to_me():
    rospy.init_node('user_info_driver')
    pup = rospy.Publisher('/raw_data', String, queue_size=10)
    rate = rospy.Rate(1)
    my_msg = "name: " + name + ", age: " + age + ", height: " + height
    print(my_msg)
    while not rospy.is_shutdown():
        pup.publish(my_msg)
        rate.sleep()
    

if __name__ == "__main__":
    try:
        talk_to_me()
    except rospy.ROSInterruptException:
        pass