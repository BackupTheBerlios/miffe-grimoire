  sed -i "s:/usr/local:/usr:" config.Unix
  echo "#define CONVERT_INCLUDE_DIRECTIVES" >> config.Unix
  cp doc/gv.man source/
  xmkmf						&&
  make Makefiles				&&
  make						&&
  prepare_install				&&
  make install					&&
  make install.man				&&
  make install.doc
