#!/bin/bash


echo "deb http://ppa.launchpad.net/mozillateam/firefox-next/ubuntu trusty main" >>  /etc/apt/sources.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9BDB3D89CE49EC21
apt-get update -qq
apt-get install -qq -y pkg-mozilla-archive-keyring firefox
