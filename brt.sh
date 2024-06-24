#!/bin/bash 

for j in `xrandr | grep '\bconnected'`
do 
	MON=$j
	break
done

xrandr --output $MON --brightness $1 

echo DONE...