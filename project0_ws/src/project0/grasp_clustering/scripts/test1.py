import numpy as np


def loadcsv():
    tmp = np.loadtxt("object_grasping_30sec_no_labels.csv",dtype=np.str, delimiter="")
    data = tmp[1:4, 1:3].astype(np.float)
    return data

loadcsv()

