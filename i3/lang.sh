#!/bin/bash


layout=`setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}'`

if [ $layout = 'us' ];
then
    setxkbmap ara;
else
    setxkbmap us;
fi


