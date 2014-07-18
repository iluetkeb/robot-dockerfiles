FROM ubuntu:12.04
MAINTAINER Ingo Lütkebohle <ingo.luetkebohle@ipvs.uni-stuttgart.de>
RUN apt-get -y install wget
RUN echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list
ADD http://packages.ros.org/ros.key ros.key
RUN apt-key add ros.key
RUN apt-get update
RUN apt-get -y install ros-groovy-ros-base python-rosdep python-rosdistro python-rosinstall python-rosinstall-generator python-rospkg python-wstool python-vcstools python-catkin-pkg libopenni-nite-dev

