(

  ./configure $OPTS 
  echo "" >>icons/Makefile &&
  echo "*.ico:" >>icons/Makefile &&
  make             &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
