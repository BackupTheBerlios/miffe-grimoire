#!/bin/sh

case $1 in
	restart)
		pid=`pidof i8kbuttons`
		kill $pid
		i8kbuttons -u 'i8kmixer.sh up' -d 'i8kmixer.sh down' -r 100 &
		;;	
	stop)
		pid=`pidof i8kbuttons`
		kill $pid
		;;
	start)
		i8kbuttons -u 'i8kmixer.sh up' -d 'i8kmixer.sh down' -r 100 &
		;;
	*)
		echo Usage: $0 start/stop/restart
		;;
esac
