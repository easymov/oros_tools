Oros tools ROS package
======================

A simple way to connect a ROS system to the Oros.io platform.

Overview
--------

[Oros.io](https://oros.io) is a web platform dedicated to the development of ROS applications.
The package use the [rosbridge suite](https://github.com/RobotWebTools/rosbridge_suite) to create a connection between Oros and your system.

Quickstart
----------

Clone the project into a new or an existing workspace

Install dependencies

	rosdep install --from-paths src --ignore-src --rosdistro=${ROS_DISTRO} -y -r

Generate Key and certs for *https* support

	cd src/oros_tools/certs
	./generate_certs.sh

`generate_certs.sh` is a script that will generate key and certs to enable the secure connection between
the browser and the rosbridge. The info you provide to the script don't have to be correct.

Build the package and source it.

Launch the webserver
	
    roslaunch oros_tools live.launch

You can also integrate `live.launch` into an another launch file.

    <include file="$(find oros_tools)/launch/live.launch"/>
