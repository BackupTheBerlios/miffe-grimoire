(
  ./configure --prefix=/usr       &&
  make                            &&
  make check                      &&
  prepare_install                 &&
  make install                    &&
  make install-configure
) >$C_FIFO 2>&1
