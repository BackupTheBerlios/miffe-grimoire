(
  sed -i Makefile.unixsdl -e s/"-mcpu=i686 -O2"/"$CFLAGS"/ &&
  make -f Makefile.unixsdl                            &&
  prepare_install                                     &&
  install -m 775 fceu /usr/bin
) >$C_FIFO 2>&1
