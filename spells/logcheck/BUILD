CONFDIR=/etc/logcheck
LPATH=systems/linux
SCRATCH=/var/spool/logtail

prepare_install                						&&

[ ! -d $CONFDIR ]  &&  ( mkdir $CONFDIR  ;  chmod 700 $CONFDIR )
[ ! -d $SCRATCH ]  &&  ( mkdir $SCRATCH  ;  chmod 700 $SCRATCH )

sed  -i "s:TMPDIR=/usr/local/etc/tmp:TMPDIR=$SCRATCH:"			\
	$LPATH/logcheck.sh						&&

sed  -i "s:/usr/local/etc:$CONFDIR:"  $LPATH/logcheck.sh		&&

sed  -i "s:^\$LOGTAIL /var/log/maillog:\$LOGTAIL /var/log/mail:"	\
	$LPATH/logcheck.sh						&&

sed  -i "s:/usr/local/bin/logtail:/usr/bin/logtail:"			\
	$LPATH/logcheck.sh						&&

sed  -i "s:CC = cc:CC = gcc:"  Makefile					&&
sed  -i "s:^CFLAGS = -O:CFLAGS = $CFLAGS:"  Makefile			&&
sed  -i "s:/usr/local/etc/tmp:$SCRATCH:"  Makefile			&&
sed  -i "s:/usr/local/bin:/usr/bin:"  Makefile				&&
sed  -i "s:/usr/local/etc:$CONFDIR:"  Makefile				&&

make  linux								&&
[ -x $CONFDIR/logcheck.sh ]  &&  ln -s  $CONFDIR/logcheck.sh  /usr/bin
