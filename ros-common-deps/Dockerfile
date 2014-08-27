FROM ingo/ubuntu-de:12.04
MAINTAINER Ingo Lütkebohle <ingo.luetkebohle@ipvs.uni-stuttgart.de>

# i've been watching https://www.youtube.com/watch?v=xfAx8_rFjx4 while this
# built -- go check it out, that kid is amazing

# add ros repository
RUN echo "deb http://ros.informatik.uni-freiburg.de/packages/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list
ADD http://packages.ros.org/ros.key ros.key
RUN apt-key add ros.key
RUN apt-get update

# install all the *Ubuntu* packages that would be pulled in by installing ROS
RUN apt-get -y install `apt-get install -s ros-fuerte-ros ros-fuerte-pr2-apps ros-groovy-ros ros-groovy-pr2-apps python-rospkg |grep ^Inst|grep -v ROS|awk '{print $2}'`

# common ROS build infrastructure
RUN apt-get -y install python-rosdep python-rosdistro python-rosinstall python-rosinstall-generator python-rospkg python-wstool python-vcstools python-catkin-pkg

# often used for actually running and displaying stuff, so might as well include it here
RUN apt-get -y install sudo x11vnc fluxbox xvfb

