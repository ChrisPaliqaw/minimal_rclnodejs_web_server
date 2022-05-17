#!/bin/bash
# Making sure user is root
if [ "$EUID" -ne 0 ]
	  then echo "Please run as root."
		    exit
fi
# Enter to the script path just in case it is called from another path
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd "$SCRIPTPATH"
# Install the latest version of node using n
npm install -g n
n lts
# Checking where node/nodejs is
which node
which nodejs
# node and nodejs are the "same" but have different versions.
# Let's make sure they are really the same
ln -svf /usr/local/bin/node /usr/bin/nodejs
# Checking node/nodejs have the same version
node --version
nodejs --version
# Source ROS2
source /opt/ros/foxy/setup.bash
# Installing npm
npm install --global npm@latest
npm install --global node-gyp@latest
npm i rclnodejs

