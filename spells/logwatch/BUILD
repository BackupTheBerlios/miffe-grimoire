(
	sed -i "s:/bin/mail:/usr/bin/mail:" conf/logwatch.conf

	prepare_install                         &&
	mkdir /etc/log.d			&&
	cp -r conf scripts /etc/log.d		&&
	ln -sf /etc/log.d/scripts/logwatch.pl /usr/sbin/logwatch	&&
	ln -sf /etc/log.d/conf/logwatch.conf /etc/log.d/logwatch.conf	&&
	mkdir /usr/share/doc/logwatch-$VERSION				&&
	cp HOWTO* README License project/CHANGES project/TODO		\
		/usr/share/doc/logwatch-$VERSION 			&&
	cp logwatch.8 /usr/share/man/man8
	
 ) > $C_FIFO 2>&1
