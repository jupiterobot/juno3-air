@echo off
setlocal
set MY_IMAGE=juno3-air:mine
docker commit juno3_air %MY_IMAGE%
