# UAV
Code For NSF CPS Challenge

# Installation 

Clone this repository. The Dockerfile assumes you have a cuda enabled GPU with cuda 10.0. If you have another version of cuda, select the appropriate docker image to pull from [here](https://hub.docker.com/r/nvidia/cudagl)

``` $ cd UAV 
$ mkdir src
$ cd src
$ git clone https://github.com/PX4/Firmware.git
$ cd ..
$ chmod u+x run_docker.sh
$ ./run_docker.sh
```
Once inside the container. Run the following: 

``` 
$ cd home/src/Firmware
$ make px4_sitl_default gazebo
```
This should bring up a gazebo simulation of a drone. 

More details to follow. The dockerfile will setup everything you need for the px4 sitl simulation. You can then run a container using the file ./run_docker.sh

# Running the Takeoff Simulation Example

To run the takeoff example run the following in three different terminals:

**Terminal 1**: 

```$ ./run_docker.sh
$ cd home/src/Firmware
$ source /opt/ros/kinetic/setup.bash
$ make px4_sitl gazebo
```

**Terminal 2**: 

```
$ docker container exec -it px4_containter bash
```
Once you're in the container. 

```
$ source /opt/ros/kinetic/setup.bash
$ roslaunch mavros px4.launch fcu_url:="udp://:14540@127.0.0.1:14557"
```

**Terminal 3**: 
```
$ docker container exec -it px4_containter bash
```
Once you're in the container. 

```
$ cd home/catkin_ws
$ source /opt/ros/kinetic/setup.bash
$ catkin _make
$ source devel/setup.bash 
$ rosrun UAV offboard_node 
```

Wait a few seconds (I was impatient at first, don't be like me).



./run_docker.sh


