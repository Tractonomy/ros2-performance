#!/bin/bash

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ -z "$1" ]; then
    echo "Working on $THIS_DIR workspace"
else
    echo "Moving to $1 workspace"
    cd $1
fi

echo "Ignoring packages..."

# TODO: this may print some errors if some paths are not correct, but it should still work
# we should ignore paths that do not exist
touch \
  src/ros/kdl_parser/COLCON_IGNORE \
  src/ros/ros_tutorials/COLCON_IGNORE \
  src/ros2/examples/rclpy/COLCON_IGNORE \
  src/ros2/geometry2/examples_tf2_py/COLCON_IGNORE \
  src/ros2/geometry2/test_tf2/COLCON_IGNORE \
  src/ros2/geometry2/tf2_bullet/COLCON_IGNORE \
  src/ros2/geometry2/tf2_eigen/COLCON_IGNORE \
  src/ros2/geometry2/tf2_kdl/COLCON_IGNORE \
  src/ros2/geometry2/tf2_geometry_msgs/COLCON_IGNORE \
  src/ros2/geometry2/tf2_sensor_msgs/COLCON_IGNORE \
  src/ros2/geometry2/tf2_tools/COLCON_IGNORE \
  src/ros2/examples/rclcpp/composition/COLCON_IGNORE \
  src/ros2/orocos_kinematics_dynamics/COLCON_IGNORE \
  src/ros2/rcl_interfaces/test_msgs/COLCON_IGNORE \
  src/ros2/rcl_logging/rcl_logging_log4cxx/COLCON_IGNORE \
  src/ros2/rmw_connext/COLCON_IGNORE \
  src/ros2/rosbag2/COLCON_IGNORE \
  src/ros2/system_tests/COLCON_IGNORE \
  src/ros2/urdf/COLCON_IGNORE \
  src/ros2/urdfdom/COLCON_IGNORE \
  src/ros2/rcl/rcl/test/COLCON_IGNORE \
  src/ros2/examples/rclpy/COLCON_IGNORE \
  src/ros-perception/laser_geometry/COLCON_IGNORE

