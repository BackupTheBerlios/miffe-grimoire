(
  cd lib/Xaw3d					&&
  sed -i -e "/#include <widec.h>/,/#define wcsncpy(d,s,l) wsncpy(d,s,l)/d" \
				XawI18n.h	&&
  prepare_install				&&
  mkdir /usr/X11/include/X11/Xaw3d		&&
  cp *.h /usr/X11/include/X11/Xaw3d		&&
  xmkmf						&&
  make						&&
  cp libXaw3d.so.7.0 /usr/X11/lib		&&
  cd -						&&
  cd /usr/X11/lib				&&
  ln -s libXaw3d.so.7.0 libXaw3d.so.7		&&
  ln -s libXaw3d.so.7.0 libXaw3d.so		&&
  ldconfig -v					&&
  cd -
 ) > $C_FIFO 2>&1
