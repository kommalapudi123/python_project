FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y openssh-server
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y python 
RUN apt-get install -y gpg
ENTRYPOINT service ssh start && /bin/bash

