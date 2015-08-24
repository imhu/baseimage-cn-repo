FROM phusion/baseimage:latest

MAINTAINER imhu <huwei13045@gmail.com>

# replace sources.list
WORKDIR /etc/apt
RUN mv sources.list sources.list.backup
ADD config/sources.list /etc/apt/sources.list

RUN apt-get update -y
WORKDIR $HOME
