(

  sed  -i  "s:/sbin/lspci:/usr/sbin/lspci:"   radeontool.c 

  make						&&
  prepare_install                               &&
  cp	radeontool	/usr/bin		&&
  chmod	755	/usr/bin/radeontool

) > $C_FIFO 2>&1
