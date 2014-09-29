# -*- coding: utf-8 -*-
"""
Created on Thu Sep 25 07:17:23 2014

@author: Michal
"""

import matplotlib.pyplot as plt

from skimage.feature import hog
from skimage import data, color, exposure, io


image = color.rgb2gray(data.lena())

fd, hog_image = hog(image, orientations=8, pixels_per_cell=(16, 16),
                    cells_per_block=(1, 1), visualise=True)

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(8, 4))

ax1.axis('off')
ax1.imshow(image, cmap=plt.cm.gray)

# Rescale histogram for better display
hog_image_rescaled = exposure.rescale_intensity(hog_image, in_range=(0, 0.02))

ax2.axis('off')
ax2.imshow(hog_image_rescaled, cmap=plt.cm.gray)
plt.show()

io.imsave('lena-hog.png', hog_image_rescaled)
io.imsave('lena.png', image)