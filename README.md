# 基于Agilex-Scout2.0的户外仿真环境



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

