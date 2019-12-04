export DIR=$HOME/.eclipse-docker
mkdir $DIR
docker run -ti --rm \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $DIR:/home/developer \
           audryus/jee-eclipse:13.2019.09

