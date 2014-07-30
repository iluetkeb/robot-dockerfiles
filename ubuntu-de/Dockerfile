FROM ubuntu:12.04
MAINTAINER Ingo Lütkebohle <ingo.luetkebohle@ipvs.uni-stuttgart.de>

# turn of debconf questions, they do not work in "docker build" anyway.
# for important things, use debconf-set-selections *prior* to installation
RUN echo debconf debconf/frontend select noninteractive | debconf-set-selections

# change ubuntu source to german mirrors
RUN sed -i 's#http://archive.ubuntu.com#http://de.archive.ubuntu.com#g' /etc/apt/sources.list

# add multiverse repo, some ros package need it (not the ones installed here,
# but images that build on this might do)
RUN apt-get update
RUN apt-get -y install python-software-properties
RUN add-apt-repository "deb http://de.archive.ubuntu.com/ubuntu/ precise multiverse"
RUN add-apt-repository "deb http://de.archive.ubuntu.com/ubuntu/ precise-updates multiverse"
RUN add-apt-repository "deb http://de.archive.ubuntu.com/ubuntu/ precise-security multiverse"
RUN apt-get update
