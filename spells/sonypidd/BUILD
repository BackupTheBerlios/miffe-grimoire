  sed  -i  "s:/usr/local:/usr:"   sonypidd
  sed  -i  's:^$click.*:$click = "/usr/bin/play /usr/share/sounds/KDE_Click.wav";:'	sonypidd
  sed  -i  's:, undef.*# 12:, ["hibernate"]\t\t   # 12:'	sonypidd

  prepare_install                               &&
  cp	sonypidd	/usr/bin                &&
  chown root.root	/usr/bin/sonypidd	&&
  chmod 755		/usr/bin/sonypidd	&&
  cp	$SCRIPT_DIR/sonypid.sh	/etc/init.d	&&
  chmod 755		/etc/init.d/sonypid.sh	&&
  ln -s	../init.d/sonypid.sh /etc/rcS.d/S99sonypid

