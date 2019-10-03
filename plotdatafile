#!/usr/bin/python

# read channel values from file and open figure
# Used mostly to read the values of an adlink buffer present in a file 
# (values stored in a file with another script)

import sys
import numpy as np


if __name__ == '__main__':

    file_name = sys.argv[1]
    channel = int(sys.argv[2])-1
 
    data = np.loadtxt(file_name)   
    intensities = data[channel] #[1000:2000]
    print("Lenght of array of values is: " + str(len(intensities)))
    import matplotlib.pyplot as plt
    plt.plot(intensities)
    plt.show()