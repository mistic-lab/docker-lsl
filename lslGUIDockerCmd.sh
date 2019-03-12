#!/bin/sh
IMAGE=nsbruce/lsl
exec docker run --rm -i -t -e XAUTHORITY=/tmp/xauth -v ~/.Xauthority:/tmp/xauth -v /tmp/.X11-unix:/tmp/ -e DISPLAY=$IP:0 --user="$(id -u):$(id -g)" --net host -v "$PWD":/data "$IMAGE" /bin/bash

