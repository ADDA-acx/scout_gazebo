# Outdoor simulation environment based on Agilex-Scout 2.0

<span > <img src="https://img.shields.io/badge/-HTML5-E34F26?style=flat-square&logo=html5&logoColor=white" /> <img src="https://img.shields.io/badge/-CSS3-1572B6?style=flat-square&logo=css3" /> <img src="https://img.shields.io/badge/-JavaScript-oringe?style=flat-square&logo=javascript" /> </span>

**This repository provides an outdoor simulation environment for differential robotics including IMU, GPS, Camera, LIDAR and wheeled odometer.**


https://github.com/ADDA-acx/scout_gazebo/assets/113503745/700485e0-e967-43d1-a6c7-25e7381a46e8



## Usage

### Dependency

- **Ubuntu: 20.04**
- **ROS: Notic**

- **[gazebo_models](https://github.com/osrf/gazebo_models)**

```
git clone https://github.com/osrf/gazebo_models.git
```

- **ROS dependencies**

```
sudo apt-get install ros-noetic-velocity-controllers
sudo apt-get install ros-noetic-gazebo-ros-control
sudo apt install ros-noetic-ros-controllers
sudo apt install ros-noetic-teleop-twist-keyboard
sudo apt-get install ros-noetic-hector-gazebo-plugins
```

### Setup

```
mkdir -p catkin_ws/src
cd catkin_ws/src
git clone https://github.com/ADDA-acx/scout_gazebo.git
cd ..
catkin_make
source devel/setup.bash
roslaunch scout_gazebo scout_gazebo.launch 
```

### Keyboard control

```
rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```

## Reference
https://github.com/agilexrobotics/scout_ros
