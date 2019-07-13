set /p local_ip="This machine IP (Eg.:192.168.1.104): "
set-variable -name DISPLAY -value %local_ip%:0.0
set /p dir="Where Eclipse files will be? (Eg.: c:\eclipse-docker): "
docker run -ti --rm -e DISPLAY=$DISPLAY -v %dir%:/home/developer audryus/jee-eclipse:12.2019.06
