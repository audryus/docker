export DIR=$HOME
mkdir $DIR/.eclipse-docker
docker run -ti --rm \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $DIR/.eclipse-docker:/home/developer \
           -v $DIR:/workspace \
           audryus/jee-eclipse:12.2019.06

