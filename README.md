# SITU Drone OpenAI
Running SJTU Drone with Gazebo simulation, OpenAI Gym and Stable Baselines 

## ROS Network

###Laptop(HOST)
ssh localhost
export ROS_MASTER_URI=http://lenovo:11311
rosrun rospy_tutorials listener.py

###Jetson
ssh localhost
export ROS_MASTER_URI=http://<host-ip-address>:11311
rosrun rospy_tutorials talker.py

https://github.com/ut-ims-robotics/tutorials/wiki/Running-ROS-over-multiple-computers
http://wiki.ros.org/ROS/NetworkSetup
http://wiki.ros.org/ROS/Tutorials/MultipleMachines
## Env
Install Env from requirements.txt

## Run
    ./run_gazebo.sh
    ./run_script.sh

## Fly
### take off
rostopic pub /drone/takeoff std_msgs/Empty "{}"

### land
rostopic pub /drone/land std_msgs/Empty "{}"

### fly forward
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 1.0, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'

### fly backward
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: -1.0, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'

### fly to left 
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 1.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'

### fly to right 
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: -1.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'

### fly up 
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 0.0, z: 1.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'

### fly down 
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 0.0, z: -1.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'

### counterclockwise rotation
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 1.0}}'

### clockwise rotation
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: -1.0}}'

### stop
rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'


tensorboard --logdir '/home/robotics/Workspace/drone_openai/src/drone_openai/zoo/logs/PPO2_1'
