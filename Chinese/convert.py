#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import numpy as np
from skimage import io
import scipy.io


for filename in os.listdir('.'):
    if filename.endswith('.txt'):
        with open(filename, 'r') as f:
            data = np.loadtxt(filename)
            io.imsave(filename[:-4] + '.png', data)
            scipy.io.savemat(filename[:-4] + '.mat', {'img': ~data.astype('bool')})
