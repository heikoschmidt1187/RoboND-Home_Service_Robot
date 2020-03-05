#!/bin/bash

# launch the turtlebot with myworld.world
xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/src/worlds/myworld.world" &
sleep 5

# launch the amcl demo package 
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(pwd)/src/map/map.yaml" &
sleep 5

# launch navigation visualization
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch"
