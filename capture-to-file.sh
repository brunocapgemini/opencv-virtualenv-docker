#!/bin/bash

ffmpeg -i rtsp://192.168.1.188:554/onvif1  -f ogg $1.mpeg

ffplay $1.mpeg

