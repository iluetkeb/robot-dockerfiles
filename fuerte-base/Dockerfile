FROM ubuntu:12.04
MAINTAINER Ingo Lütkebohle <ingo.luetkebohle@ipvs.uni-stuttgart.de>

# turn of debconf questions, they do not work in "docker build" anyway.
# for important things, use debconf-set-selections *prior* to installation
RUN echo debconf debconf/frontend select noninteractive | debconf-set-selections

# add multiverse repo, some ros package need it (not the ones installed here,
# but images that build on this might do)
RUN apt-get update
RUN apt-get -y install python-software-properties
RUN add-apt-repository "deb http://de.archive.ubuntu.com/ubuntu/ precise multiverse"
RUN add-apt-repository "deb http://de.archive.ubuntu.com/ubuntu/ precise-updates multiverse"
RUN add-apt-repository "deb http://de.archive.ubuntu.com/ubuntu/ precise-security multiverse"

# add ros repository
RUN echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list
ADD http://packages.ros.org/ros.key ros.key
RUN apt-key add ros.key
RUN apt-get update

RUN apt-get -y install ros-fuerte-ros-comm python-rosdep python-rosdistro python-rosinstall python-rosinstall-generator python-rospkg python-wstool python-vcstools python-catkin-pkg

