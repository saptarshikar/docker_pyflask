#Version 0.0.1

FROM ubuntu:latest
MAINTAINER Saptarshi Kar "saptarshikar@gmail.com"
RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get install -y tar git curl nano  wget dialog net-tools build-essential
RUN apt-get install -y python python-dev python-distribute python-pip
RUN pip install virtualenv
RUN pip install flask
RUN apt-get -y update
CMD ["/bin/bash"]
