(
  cat Makefile | sed s:g++-3.2:g++: >Makefile  &&
  make                                         &&
  prepare_install                              &&
  install -m755 jaffm /usr/bin
) >$C_FIFO 2>&1
