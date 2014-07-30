FROM ingo/ros-fuerte-camera-base:12.04
MAINTAINER Ingo Lütkebohle <ingo.luetkebohle@ipvs.uni-stuttgart.de>

# get ready for running through x11vnc
RUN mkdir /.vnc
RUN x11vnc -storepasswd camerapose /.vnc/passwd
RUN bash -c 'echo -e "fluxbox&; xterm" >> /.xsession'
RUN chmod +x /.xsession

# now build the camera_pose stuff
RUN mkdir ros_ws
WORKDIR /ros_ws
RUN rosws init . /opt/ros/fuerte/
RUN rosws set -y camera_pose --git https://github.com/Paethon/camera_pose.git
RUN rosws update camera_pose
RUN bash -c "source setup.sh ; rosmake camera_pose"

# start up x11vnc, so that we can access the container with a GUI
# this port can be mapped when starting the container to prevent conflicts
EXPOSE 5900
CMD ["x11vnc", "-forever", "-usepw", "-create"]


