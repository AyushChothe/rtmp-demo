#!/bin/bash
until [ -f /tmp/raw/$1.m3u8 ]; do
    sleep 5
done
ffmpeg -re -i /tmp/raw/$1.m3u8 \
    -c:a aac -b:a 32k -c:v libx264 -b:v 128K -s 852x480 -ar 44100 -ac 2 -tune zerolatency -preset veryfast -f flv rtmp://localhost/task/$1_low \
    -c:a aac -b:a 64k -c:v libx264 -b:v 256k -s 1280x720 -ar 44100 -ac 2 -tune zerolatency -preset veryfast -f flv rtmp://localhost/task/$1_mid \
    -c:a aac -b:a 128k -c:v libx264 -b:v 512K -s 1920x1080 -ar 44100 -ac 2 -tune zerolatency -preset veryfast -f flv rtmp://localhost/task/$1_hi
