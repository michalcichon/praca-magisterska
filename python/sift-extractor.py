# -*- coding: utf-8 -*-
"""
Created on Wed Sep 24 20:36:44 2014

@author: Michal
"""

import cv2

img  = cv2.imread('../lenna.png')
surf = cv2.SURF(400)
kp, des = surf.detectAndCompute(img,None)

img = cv2.drawKeypoints(img,kp,None,(255,0,0),4)

cv2.imwrite('surf_keypoints.jpg',img)

#class SIFTExtractor:
#    def extract():
#        return 0