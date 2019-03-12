#!/bin/sh
IMAGE=nsbruce/lsl
exec docker run --rm -i -t --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" /bin/bash

