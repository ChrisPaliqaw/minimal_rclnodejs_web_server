# minimal_rclnodejs_web_server
A minimal example of a ROS2 node that publishes to a topic and acts as a web server.

## Install dependencies
These instructs are for an Ubuntu system where ROS2 is already installed.

If you are running in a ROSject using the construct you'll need to be the root user, otherwise you won't be able to install rclnodejs
`sudo su`

Install the latest version of node using the n version manager
```
sudo npm install -g n
sudo n lts
```
Ensure the your node is what you expect
```
user:~$ which node
/usr/local/bin/node
user:~$ node --version
v16.15.0
```
Install npm, node-gyp and rclnodejs
```
sudo npm install --global npm@latest
sudo npm install --global node-gyp@latest
sudo npm i rclnodejs
```
## Clone this repo
```
cd ~
mkdir -p nodejs_ws/src
cd nodejs_ws/src
git clone https://github.com/christophomos/minimal_rclnodejs_web_server.git
cd minimal_rclnodejs_web_server
```
## Now run
Note that this script uses port 7000, which is what the The Construct reserves for web servers. Edit the script if needed.
node minimal_rclnodejs_web_server.js
