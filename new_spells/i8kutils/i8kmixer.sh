#!/bin/sh

file="/tmp/.i8k_volume"
volume=`cat $file`

if [ -z `cat $file` ]
then
	echo "22">$file
fi

if [ $1 ]
then
	if [ $1 == "up" ]
	then
		let volume+=3
		if [ $volume -gt 31 ];then volume="31";fi
		amixer sset Master Playback $volume >/dev/null
		echo "$volume">$file
	elif [ $1 == "down" ]
	then
		let volume-=3
		if [ $volume -lt 0 ];then volume="0";fi
		amixer sset Master Playback $volume >/dev/null
		echo "$volume">$file
	fi
else
	echo "Usage: i8kmixer.sh {up/down}"
fi
