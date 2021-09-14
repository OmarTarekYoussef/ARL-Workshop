#! /usr/bin/env python3
import rospy
from std_msgs.msg import String, Int64
from Exercise_three.msg import UserInfo

def cb(msg):
    messagee = msg.data
    messagee = messagee.replace("name: ","")
    messagee = messagee.replace(" age: ","")
    messagee = messagee.replace(" height: ","")
    ls = messagee.split(',')
    print("Subscriber data: ")
    rospy.loginfo(msg)
    print("Publisher data: ")
    my_msg = UserInfo()
    my_msg.name   = ls[0]
    my_msg.age    = int(ls[1])
    my_msg.height = float(ls[2])
    pup.publish(my_msg)

    

def sub_pup():
    rospy.init_node('data_processing')
    global pup
    pup = rospy.Publisher('/user_info', UserInfo, queue_size=10)
    rospy.Subscriber('/raw_data', String, callback=cb)
    rospy.spin()

if __name__ == "__main__":
    try:
        print("Running...")
        sub_pup()
    except rospy.ROSInterruptException:
        pass
