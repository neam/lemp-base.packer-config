#!/bin/bash

cd /root
mkdir provisioning
cd provisioning

apt-get update

apt-get install -y -q memcached

apt-get install -y -q sudo

apt-get install -y -q git-flow

cd /volumes/provisioning-shell-scripts/debian-wheezy/

./nodejs.sh

npm install -g grunt-cli bower yo

./mosh.sh

cd /root
