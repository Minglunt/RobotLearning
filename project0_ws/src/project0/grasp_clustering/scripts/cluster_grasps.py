#!/usr/bin/env python

##########################################
##### WRITE YOUR CODE IN THIS FILE #######
##########################################

import rospy
import numpy as np
from sklearn.cluster import KMeans
from grasp_clustering.msg import GraspInfo


def loadcsvfile():
    data = []
    file = rospy.get_param("~train_filename")
    tmp = np.genfromtxt(fname=file, delimiter=",", skip_header=1)
    for i in range(tmp.shape[0]):
        data.append(tmp[i][8:23])
    data = np.array(data)
    # print(data)
    return data


class ClusterGrasp(object):

    def __init__(self):

        # training data
        data = loadcsvfile()
        # print(data)
        self.kmeans = KMeans(n_clusters=6, random_state=0).fit(data)

        # Subscribe to the topic
        self.sub = rospy.Subscriber('/grasp_info', GraspInfo, self.callback)

        # Set up publisher
        self.pub = rospy.Publisher('/labeled_grasp_info', GraspInfo, queue_size=1)

    def callback(self, info):
        Info = info.glove
        Info = np.array(Info)
        Info = Info.reshape(1, -1)
        info.label = self.predict(Info)
        # publishing
        #print("yes")
        self.pub.publish(info)

    def predict(self, glove):
        label = self.kmeans.predict(glove)
        return label


if __name__ == '__main__':
    rospy.init_node('cluster_grasps', anonymous=True)
    cg = ClusterGrasp()
    rospy.spin()

