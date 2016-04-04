FROM ubuntu:14.04

RUN useradd -ms /bin/bash jenkins

USER jenkins

WORKDIR /home/jenkins

RUN \
  echo "Updating packages..."  && \
  apt-get update  && \
  DEBIAN_FRONTEND=noninteractive apt-get upgrade -f -y --force-yes

RUN apt-get install -y git

RUN apt-get install python2.7 idle-python2.7

RUN apt-get -y install python-pip

RUN git config --global user.name "hasancelik"

RUN git config --global user.email "hasan@hazelcast.com"
