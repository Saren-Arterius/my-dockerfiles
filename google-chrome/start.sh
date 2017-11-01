#!/bin/bash
sed -i.bak "s/uid=[0-9]\+ gid=[0-9]\+/uid=$(id -u) gid=$(id -g)/g" Dockerfile
docker build -t google-chrome .
docker run -ti --rm \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        --device /dev/snd \
        -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
        -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
        -v /run/dbus:/run/dbus \
        google-chrome google-chrome-stable --no-sandbox
