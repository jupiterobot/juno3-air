@echo off
setlocal
set ORIGINAL_IMAGE=jupiterobot/juno3-air:latest
set MY_IMAGE=juno3-air:mine
for /f "usebackq" %%A in (`docker image ls -q %ORIGINAL_IMAGE%`) do set ID=%%A
if [%ID%] == [] (
    docker pull %ORIGINAL_IMAGE%
) else (
    echo %ORIGINAL_IMAGE% already exists locally
)
if errorlevel 1 (
    echo "Failed to pull image"
    exit 1
)
for /f "usebackq" %%A in (`docker image ls -q %ORIGINAL_IMAGE%`) do set ID=%%A
docker tag %ID% %MY_IMAGE%
docker rmi %ORIGINAL_IMAGE%
