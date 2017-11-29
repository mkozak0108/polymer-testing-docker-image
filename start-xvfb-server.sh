#!/bin/bash

if [[ -z ${SCREEN_SIZE+x} ]]
then
    export SCREEN_SIZE="1920x1080"
fi

Xvfb :0 -ac +extension RANDR -screen 0 $SCREEN_SIZE"x24" &
echo "X Virtual Frame Buffer started in the background."