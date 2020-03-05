#!/bin/bash

# launch the turtlebot with myworld.world
xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/src/worlds/myworld.world" &
sleep 5

# use the gmapping slam demo for mapping 
xterm -e " roslaunch turtlebot_gazebo gmapping_demo.launch" &
sleep 5

# move the turtlebot with the teleop keyboard package 
xterm -e " roslaunch turtlebot_teleop keyboard_teleop.launch" &
sleep 5

# view navigation in rviz 
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch"
