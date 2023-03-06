#!/usr/bin/env python3

import rospy
from hw1.msg import Message

rospy.init_node("publisher")
pub = rospy.Publisher("my_topic", Message, queue_size=10)
rate = rospy.Rate(3)

sid = 0
while not rospy.is_shutdown():
    msg = Message()
    msg.message = "Test string"
    msg.sid = sid
    pub.publish(msg)
    rospy.loginfo(f'Published message: {msg.message} (sid: {msg.sid})')
    sid += 1
    rate.sleep()
