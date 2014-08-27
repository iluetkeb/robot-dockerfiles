#! /bin/sh

# get kinect devices
devices=$(for devpath in $(lsusb|grep Microsoft|awk '{print $2"/"$4}'|sed 's/://'); do echo -n " -v /dev/bus/usb/$devpath:/dev/bus/usb/$devpath"; done)
echo $devices

docker run --privileged --net=host $devices -t -i ingo/ros-groovy-ork-capture:12.04 /bin/bash
