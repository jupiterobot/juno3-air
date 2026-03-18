@echo off
setlocal
set MY_IMAGE=juno3-air:mine
docker run ^
-e http_proxy=%http_proxy% ^
-e https_proxy=%https_proxy% ^
-e HTTP_PROXY=%HTTP_PROXY% ^
-e HTTPS_PROXY=%HTTPS_PROXY% ^
-e TZ=%TZ% ^
-e RESOLUTION=1920x1080 ^
--name juno3_air ^
-p 15900:5900 ^
-p 13389:3389 ^
-p 6080:80 ^
--shm-size=512m ^
--privileged ^
%* ^
%MY_IMAGE%
