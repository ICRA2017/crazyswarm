# crazyswarm

[![Docker Build Status](https://img.shields.io/docker/build/icra2017/crazyswarm.svg)](https://hub.docker.com/r/icra2017/crazyswarm/)

A Large Nano-Quadcopter Swarm.

The documentation is available here: http://crazyswarm.readthedocs.io/en/latest/.

### Run in Docker
An X-server must be running in the host system, and permission for connections must be granted. 
For more secure configurations, see [this tutorial](http://wiki.ros.org/docker/Tutorials/GUI#Using_X_server).

```
$ docker run -it --rm --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" icra2017/crazyswarm
root@3415d34620bd:/# cd crazyswarm/
root@3415d34620bd:/crazyswarm# cd ros_ws/src/crazyswarm/scripts
root@3415d34620bd:/crazyswarm/ros_ws/src/crazyswarm/scripts# python figure8_csv.py --sim
```
[![figure8_csv.py](https://img.youtube.com/vi/K1KiUWu1EzA/0.jpg)](http://www.youtube.com/watch?v=K1KiUWu1EzA)
