# minimal_rclnodejs_web_server
A minimal example of a ROS2 node that logs a message to /rosout and publishes a web page.

The easiest way to try out this example is to make a ROS2 Foxy ROSject at https://app.theconstructsim.com/

## Install dependencies
These instructs are for an Ubuntu system where ROS2 is already installed.

If you are running in a ROSject using the construct you'll need to be the root user, otherwise you won't be able to install rclnodejs
`sudo su`

## Clone this repo
```
cd ~
mkdir -p nodejs_ws/
cd nodejs_ws
git clone https://github.com/christophomos/minimal_rclnodejs_web_server.git
cd minimal_rclnodejs_web_server
```
## Source ROS2 and Install dependencies
```
source /opt/ros/foxy/setup.bash
./minimal_rclnodejs_web_server/install_rclnodejs.sh
```

## Now run the server
Note that this script uses port 7000, which is what the The Construct reserves for web servers. Edit the script if needed.
```
source /opt/ros/foxy/setup.bash
node minimal_rclnodejs_web_server.js
```
Terminal #2 (ROSject only)
```
webpage_address
```
Click on the link in Terminal #3. Note that if your terminal isn't wide enough, the address will have a line break and the link won't work correctly.
But you can copy and paste into your web browser regardless.
