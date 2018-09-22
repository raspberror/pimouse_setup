#!/bin/bash -xve
     
exec 2> /tmp/setup.log
     
cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko
     
sleep 1                   #すぐにはデバイスファイルができないので待つ
chmod 666 /dev/rt*
     
echo 0 > /dev/rtmotoren0  #安全のためモータの電源を切っておく

# Copyright 2016 Ryuichi Ueda
# Released under GPL.
# To make line numbers be identical with the book, this statement is written here. Don't move it to the header.
