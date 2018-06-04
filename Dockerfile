FROM ros:kinetic

RUN apt-get update && apt-get install -y \
	python-catkin-pkg python-rosdep python-wstool \
	python-catkin-tools ros-kinetic-catkin \
	&& rm -rf /var/lib/apt/lists

ENV CATKIN_WS=/root/catkin_ws

RUN rm /bin/sh \
	&& ln -s /bin/bash /bin/sh	

RUN apt-get update && apt-get install -y \
	libnlopt-dev \
	build-essential software-properties-common \
	git swig libpython-dev python-numpy python-yaml python-matplotlib \ 
	gcc-arm-none-eabi libpcl-dev libusb-1.0-0-dev sdcc \
	&& rm -rf /var/lib/apt/lists	

RUN source /ros_entrypoint.sh \
	&& mkdir -p $CATKIN_WS/src \
	&& cd $CATKIN_WS && catkin_init_workspace \
	&& cd src && git clone https://github.com/ICRA2017/crazyswarm.git
	
RUN source /ros_entrypoint.sh \
	&& cd $CATKIN_WS/src/crazyswarm \
	&& ./buildSimOnly.sh
