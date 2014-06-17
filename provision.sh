#!/bin/bash

cd /root
mkdir provisioning
cd provisioning

# install common locales
locale-gen en_US.UTF-8

apt-get update

apt-get install -y -q memcached

apt-get install -y -q sudo

apt-get install -y -q git-flow

cd /volumes/provisioning-shell-scripts/debian-wheezy/

./nodejs.sh

npm install -g grunt-cli bower yo

./mosh.sh

cd /root
