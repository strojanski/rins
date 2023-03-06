#!/usr/bin/env python3

import rospy
from hw1.srv import SumService
import random

def client():
    rospy.wait_for_service("SumService")

    try:
        array_sum = rospy.ServiceProxy("SumService", SumService)
        data = [random.randint(1,10) for _ in range(10)]
        rospy.loginfo("Sending data" + data)
        res = array_sum(data)
        rospy.loginfo(f"Sum: {res.sum}")
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")
        
if __name__ == "__main__":
    rospy.init_node("array_sum_client")
    for i in range(10):
        client()
        rospy.sleep(1)
