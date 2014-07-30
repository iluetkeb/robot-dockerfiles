FROM ingo/ros-fuerte-base:12.04
MAINTAINER Ingo Lütkebohle <ingo.luetkebohle@ipvs.uni-stuttgart.de>

RUN apt-get -y install ros-fuerte-opencv2 ros-fuerte-driver-common ros-fuerte-geometry ros-fuerte-geometry-experimental
# this one is really massive, so give docker a chance to cache the above
RUN apt-get -y install ros-fuerte-pr2-calibration

