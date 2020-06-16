#! /bin/bash

echo "script Docker $PPID"
xhost local:root
docker run -it \
  --net=host \
  --privileged \
  --rm \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --env=unix$DISPLAY \
  --env="QT_X11_NO_MITSHM=1" \
  --privileged -v /dev/usb/hiddev0 \
  -v /$HOME/Flotas-master/realsense2_camera/:/ADAS_ws/src/realsense2_camera \
  -v /$HOME/Flotas-master/ddynamic_reconfigure/:/ADAS_ws/src/ddynamic_reconfigure \
  -v /$HOME/Flotas-master/camara/:/ADAS_ws/src/camara \
  -v /media/adas/BAGS/bag:/root/Bags \
  -w "/ADAS_ws/" \
  nicmoseli/adas_eci:latteV1.1  \
   /bin/bash -c 'source devel/setup.bash && roslaunch camara camara_visual.launch'



