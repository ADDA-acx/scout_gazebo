#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/adda/ros_pack/scout_gazebo/src/gps_umd/gps_common"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/adda/ros_pack/scout_gazebo/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/adda/ros_pack/scout_gazebo/install/lib/python3/dist-packages:/home/adda/ros_pack/scout_gazebo/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/adda/ros_pack/scout_gazebo/build" \
    "/usr/bin/python3" \
    "/home/adda/ros_pack/scout_gazebo/src/gps_umd/gps_common/setup.py" \
     \
    build --build-base "/home/adda/ros_pack/scout_gazebo/build/gps_umd/gps_common" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/adda/ros_pack/scout_gazebo/install" --install-scripts="/home/adda/ros_pack/scout_gazebo/install/bin"
