#!/usr/bin/env python3

import rospy
from hw1.msg import Message

def callback(msg):
    rospy.loginfo('Received message: %s (sequence ID: %d)', msg.message, msg.sid)

rospy.init_node('subscriber')
sub = rospy.Subscriber('my_topic', Message, callback)
rospy.spin()
