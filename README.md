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
$./run_docker.sh
```
Once inside the container. Run the following: 

``` 
$ cd home/src/Firmware
$ make px4_sitl_default gazebo
```
This should bring up a gazebo simulation of a drone. 

More details to follow. The dockerfile will setup everything you need for the px4 sitl simulation. You can then run a container using the file ./run_docker.sh
