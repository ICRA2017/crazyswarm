FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
	build-essential git swig libpython-dev python-numpy python-yaml python-matplotlib \
	&& rm -rf /var/lib/apt/lists

RUN git clone -b reproducible https://github.com/ICRA2017/crazyswarm.git
	
RUN cd crazyswarm && ./buildSimOnly.sh
