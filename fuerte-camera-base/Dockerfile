FROM ingo/ros-fuerte-base:12.04
MAINTAINER Ingo Lütkebohle <ingo.luetkebohle@ipvs.uni-stuttgart.de>

# these ROS packages are needed by the camera_pose stack
RUN apt-get -y install ros-fuerte-opencv2 ros-fuerte-pr2-calibration ros-fuerte-driver-common ros-fuerte-geometry ros-fuerte-geometry-experimental

# separate, because cache kicks in after every run, and these are more often
# changed -- they are only relevant to viewing things
RUN apt-get -y install sudo x11vnc fluxbox openssh-server


