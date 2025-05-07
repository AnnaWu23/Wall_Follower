#!/bin/sh

echo "-- stop ros2"
ps -ef | grep ros2 | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop planner"
ps -ef | grep planner | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop gzserver"
ps -ef | grep gzserver | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop wallFollower"
ps -ef | grep wallFollower | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop robot_state_pub"
ps -ef | grep robot_state_pub | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop gzclient"
ps -ef | grep gzclient | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop barcode_reader"
ps -ef | grep barcode_reader | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop rviz2"
ps -ef | grep rviz2 | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop occupancy_grid_"
ps -ef | grep occupancy_grid_ | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

echo "-- stop cartographer_no"
ps -ef | grep cartographer_no | grep -v grep | awk '{print $2}' | xargs kill -9
sleep 1

