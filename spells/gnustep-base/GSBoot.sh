#!/bin/sh
 
# GSBoot.sh
# (c) 2003 Dennis Leeuw
# License: GPL version 2 or any newer version
# 
# If GNUstep is not installed in the default place (/usr/GNUstep)
# set this variable to the GNUstep Makefile directory
# e.g. /usr/GNUstep/System/Makefiles
GNUSTEP_MAKEFILES=""
echo -n "GNUstep services: "
# Make sure GNUSTEP_MAKEFILES is set to something
if [ "x$GNUSTEP_MAKEFILES" = "x" ]; then
        if [ -d /usr/GNUstep/System/Makefiles ]; then
	                GNUSTEP_MAKEFILES="/usr/GNUstep/System/Makefiles"
        else
	                echo "GNUstep is not installed"
	                exit 1
        fi
fi
# Make sure GNUSTEP_MAKEFILES contains GNUstep.sh
# And source it if available
if [ -x $GNUSTEP_MAKEFILES/GNUstep.sh ]; then
        . $GNUSTEP_MAKEFILES/GNUstep.sh
else
        echo "GNUstep.sh not found in $GNUSTEP_MAKEFILES"
        exit 1
fi
# Do what is requested
case $1 in
        start)
                if [ -x $GNUSTEP_SYSTEM_ROOT/Tools/$GNUSTEP_HOST_CPU/$GNUSTEP_HOST_OS/gdomap ]; then
                        echo -n "gdomap "
                        $GNUSTEP_SYSTEM_ROOT/Tools/$GNUSTEP_HOST_CPU/$GNUSTEP_HOST_OS/gdomap
                fi
                if [ -x $GNUSTEP_SYSTEM_ROOT/Tools/$GNUSTEP_HOST_CPU/$GNUSTEP_HOST_OS/$LIBRARY_COMBO/gdnc ]; then
		              echo -n "gdnc "
                        $GNUSTEP_SYSTEM_ROOT/Tools/$GNUSTEP_HOST_CPU/$GNUSTEP_HOST_OS/$LIBRARY_COMBO/gdnc
                fi
                if [ -x $GNUSTEP_SYSTEM_ROOT/Tools/$GNUSTEP_HOST_CPU/$GNUSTEP_HOST_OS/$LIBRARY_COMBO/gnustep-sndd ]; then
		              echo -n "gnustep-sndd "
                        $GNUSTEP_SYSTEM_ROOT/Tools/$GNUSTEP_HOST_CPU/$GNUSTEP_HOST_OS/$LIBRARY_COMBO/gnustep-sndd
                fi
                echo "started."
                exit 0
        ;;
        stop)
                echo -n "gdomap "
                killall gdomap
                echo -n "gdnc "
                killall gdnc
                echo "stopped."
                echo -n "gnustep-sndd "
                killall gnustep-sndd
                echo "stopped."
        ;;
        restart)
                $0 stop; $0 start;
        ;;
        "")
                # Assume GSBoot.sh start
                $0 start
                exit
        ;;
        *)
                echo "GSBoot.sh [start|stop]"
                exit
        ;;
esac
# END
