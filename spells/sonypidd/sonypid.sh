#!/bin/sh
# This script starts/stops deamon that watches for sonypi events
# on Sony VAIO laptops
#

start() {
	/usr/bin/sonypidd
}

stop() {
	pkill sonypidd
}

case "$1" in 
	start)		start	;;
	stop)		stop	;;
	restart)	stop; start	;;
	*)		echo "Usage: $0 start|stop|restart"
esac
