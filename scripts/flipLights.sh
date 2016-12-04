#!/bin/bash
gpio mode 0 out
numFlips=0
numFlips=$1
flipSpeed=0
flipSpeed=$2
currentFlipNum=0
while [ $currentFlipNum -le $numFlips ]
do
	gpio write 0 1
	sleep $((flipSpeed / 100))
	gpio write 0 0
	sleep $((flipSpeed / 100))
	((currentFlipNum++))
done
