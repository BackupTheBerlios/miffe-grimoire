
sed  -i '21i#define HID_MAX_USAGES                  1024'	\
	src/drivers/usb/linux-usb.c				&&
sed  -i 's:apcupsd.css:/apcupsd.css:' src/cgi/cgilib.c		&&

./configure	--build=$BUILD					\
		--prefix=/usr					\
		--sysconfdir=/etc/apcupsd			\
		--localstatedir=/var				\
		--enable-usb					\
		--with-log-dir=/var/log				\
		--with-serial-dev=/dev/usb/hiddev[0-15]		\
		$OPTS						&&

make			&&
prepare_install		&&
make  install		&&

if [ -f /etc/rc0.d/S90halt ]; then
	rm  /etc/rc0.d/S90halt
	ln  -s /etc/init.d/halt.sh /etc/rc0.d/S99halt
fi

install  -m 0754  $SCRIPT_DIR/apcupsd $SCRIPT_DIR/UPSdown /etc/init.d	&&

ln  -sf /etc/init.d/apcupsd /etc/rc0.d/K79apcupsd	&&
ln  -sf /etc/init.d/UPSdown /etc/rc0.d/K98UPSdown	&&
ln  -sf /etc/init.d/apcupsd /etc/rc1.d/K79apcupsd	&&
ln  -sf /etc/init.d/apcupsd /etc/rc2.d/S20apcupsd	&&
ln  -sf /etc/init.d/apcupsd /etc/rc3.d/S20apcupsd	&&
ln  -sf /etc/init.d/apcupsd /etc/rc4.d/S20apcupsd	&&
ln  -sf /etc/init.d/apcupsd /etc/rc5.d/S20apcupsd	&&
ln  -sf /etc/init.d/apcupsd /etc/rc6.d/K79apcupsd
