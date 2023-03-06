#!/usr/bin/env python3

import rospy
from hw1.srv import SumService

def compute_sum(req):
    sum = 0
    for num in req.data:
        sum += num
    return sum


def server():
    rospy.init_node("array_sum_server")
    s = rospy.Service("SumService", SumService, compute_sum)
    print("Summing the array")
    rospy.spin()
    
if __name__ == "__main__":
    server()
