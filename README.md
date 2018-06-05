# crazyswarm

[![Travis CI Build Status](https://travis-ci.org/ICRA2017/crazyswarm.svg?branch=reproducible)](https://travis-ci.org/ICRA2017/crazyswarm)

[![Docker Build Status](https://dockerbuildbadges.quelltext.eu/status.svg?organization=icra2017&repository=crazyswarm)](https://hub.docker.com/r/icra2017/crazyswarm/builds/) 

A Large Nano-Quadcopter Swarm.

The documentation is available here: http://crazyswarm.readthedocs.io/en/latest/.

### Run in Docker

```
$ docker run -it --rm -e DISPLAY=<host_ip_address>:0.0 -v /tmp/.X11-unix:/tmp/.X11-unix:rw icra2017/crazyswarm /bin/bash
root@3415d34620bd:/# cd crazyswarm/
root@3415d34620bd:/crazyswarm# cd ros_ws/src/crazyswarm/scripts
root@3415d34620bd:/crazyswarm/ros_ws/src/crazyswarm/scripts# python figure8_csv.py --sim
```
