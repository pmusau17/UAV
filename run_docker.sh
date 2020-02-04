#! /bin/bash
xhost +local:docker

#run the docker container
docker run -it --rm --runtime=nvidia --privileged --env="QT_X11_NO_MITSHM=1" \
    --env=LOCAL_USER_ID="$(id -u)" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/src/:/home/src:rw \
    -e DISPLAY=:0 \
    -p 14570:14570/udp \
    --name=px4_containter px4 bash