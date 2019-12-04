call myip.bat
call myip.bat
echo Your Local IP: %myIp%
"c:\Program Files\VcXsrv\xlaunch.exe" -run config.xlaunch
docker run -ti --rm -p 8080:8080 -e DISPLAY=%myIp%:0.0 -v d:\eclipse-docker:/home/developer audryus/jee-eclipse:13.2019.09
