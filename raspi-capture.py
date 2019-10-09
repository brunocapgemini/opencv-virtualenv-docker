# rtsp://192.168.1.188:554/onvif1

import sys
sys.path.append('/usr/local/lib/python2.7/site-packages')

import cv2
import time
ip = 'rtsp://192.168.1.188:554/onvif1'
cap = cv2.VideoCapture(ip)

while(True):
    ret, frame = cap.read()
    cv2.imshow('frame',frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
cap.release()
