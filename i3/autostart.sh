#!/usr/bin/bash

xrandr --output HDMI-A-2 --brightness 0.8
numlockx on
MYVAR=`ls ~/Pictures/ | shuf -n 1`
feh --bg-scale ~/Pictures/$MYVAR
