# Docker of Juno 3 Air with Ubuntu + ROS 2

## Overview
- Includes all libraries, packages, and sample programs necessary for Juno 3 AI development.
- Based on the Humble version of Daisuke Sato: Dockerfiles to provide HTML5 VNC interface to access Ubuntu Desktop + ROS 2, [GitHub tiryoh/ros2-desktop-vnc](https://github.com/Tiryoh/docker-ros2-desktop-vnc).
- VSCodium

## Image Creation

```
git clone https://github.com/jupiterobot/juno3-air.git
cd juno3-air
./build.bash
```

## Image Public Location

https://hub.docker.com/repository/docker/jupiterobot/juno3-air

## Execution (Linux)

### Pulling Image

```
./pull.bash
```

### Starting Container

```
./run.bash
```

When using GPU

```
./run.bash --gpus all
```

### Using the Desktop

- When using a web browser as a VNC viewer
  - Access `http://127.0.0.1:6080`.
  - Password: ubuntu

- When using Remmina as a VNC viewer
  - Access `127.0.0.1:15900`.
  - Password: ubuntu

### Saving the Current Container as an Image

```
./commit.bash
```

## Execution (Windows)

### Pulling Image

```
pull.bat
```

### Starting Container

```
run.bat
```

When using GPU

```
run.bat --gpus all
```

### Using the Desktop

- When using a web browser
  - Access `http://127.0.0.1:6080`.
  - Password: ubuntu

- When using a VNC viewer
  - Connect to 127.0.0.1:15900
  - Password: ubuntu

### Saving the Current Container as an Image

```
commit.bat
```

## Known Issues and Future Tasks


## Author

Jeffrey Tan

## History

- 2026-03-18: Created


## License

Copyright (c) 2026 Jeffrey Tan  
All rights reserved.  
This project is licensed under the Apache License 2.0 license found in the LICENSE file in the root directory of this project.

## References

- Daisuke Sato: Dockerfiles to provide HTML5 VNC interface to access Ubuntu Desktop + ROS 2, [GitHub tiryoh/ros2-desktop-vnc](https://github.com/Tiryoh/docker-ros2-desktop-vnc)
