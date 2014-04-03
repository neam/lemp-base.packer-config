#!/bin/bash

cd /root
mkdir provisioning
cd provisioning

apt-get update

apt-get install -y -q memcached

apt-get install -y -q sudo

git clone https://github.com/neam/provisioning-shell-scripts.git

cd provisioning-shell-scripts/debian-wheezy/

./nodejs.sh

npm install -g grunt-cli bower yo

./mosh.sh

cd /root
