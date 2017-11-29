#!/bin/bash


##install java
#RUN add-apt-repository ppa:webupd8team/java
#RUN add-apt-repository ppa:openjdk-r/ppa
#- apt-get update -qq && apt-get install oracle-java8-installer -qq
#echo deb http://http.debian.net/debian jessie-backports main >> /etc/apt/sources.list
#apt-get update -qq
#apt-get install -y -qq openjdk-7-jdk
#update-alternatives --config java

#rm -rf /var/lib/apt/lists/* /var/cache/apt/*

#install Java 8
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | \
  tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | \
  tee -a /etc/apt/sources.list.d/webupd8team-java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
apt-get -qq update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
apt-get install -y -qq oracle-java8-installer
apt-get install -y -qq oracle-java8-set-default