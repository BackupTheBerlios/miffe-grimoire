(
  . /usr/GNUstep/System/Makefiles/GNUstep.sh        &&
  ./configure  --prefix=/usr/GNUstep                &&
  make                                              &&
  prepare_install                                   &&
  cp $SCRIPT_DIR/GSBoot.sh /etc/init.d              &&
  chmod +x /etc/init.d/GSBoot.sh                    &&
  make install
) >$C_FIFO 2>&1
