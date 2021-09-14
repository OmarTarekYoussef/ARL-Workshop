#! /usr/bin/env python3
import rospy
from std_msgs.msg import String, Int64

def cb(msg):
    messagee = msg.data
    messagee = messagee.replace("name: ","")
    messagee = messagee.replace(" age: ","")
    messagee = messagee.replace(" height: ","")
    ls = messagee.split(',')
    print("Subscriber data: ")
    rospy.loginfo(msg)
    print("Publisher data: ")
    namee.publish(ls[0])
    agee.publish(int(ls[1]))
    heightt.publish(int(ls[2]))
    

def sub_pup():
    rospy.init_node('data_processing')
    global namee ,agee ,heightt 
    namee = rospy.Publisher('/name', String, queue_size=10)
    agee = rospy.Publisher('/age', Int64, queue_size=10)
    heightt = rospy.Publisher('/height', Int64, queue_size=10)
    rospy.Subscriber('/raw_data', String, callback=cb)
    rospy.spin()

if __name__ == "__main__":
    try:
        print("Running...")
        sub_pup()
    except rospy.ROSInterruptException:
        pass
