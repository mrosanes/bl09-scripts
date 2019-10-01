#!/usr/bin/python

# Store adlink raw data present in adlink buffer in file and plot a given 
# channel

import sys
import numpy as np

import PyTango

if __name__ == '__main__':
    adlink = sys.argv[1]
    channel = int(sys.argv[2])-1
    
    adlink_dev = PyTango.DeviceProxy(adlink)
    print(adlink_dev)
    
    file_name = sys.argv[3]
    data = adlink_dev.read_attribute('RawDATA').value
    
    np.savetxt(file_name, data, '%d')   
    buf_data = data
    intensities = buf_data[channel]
    print("Lenght of array of values is: " + str(len(intensities)))
    import matplotlib.pyplot as plt
    plt.plot(intensities)
    plt.show()


