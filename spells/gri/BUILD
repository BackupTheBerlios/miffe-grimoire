
LISPDIR=/usr/lib/xemacs/xemacs-packages/lisp

./configure  --build=$BUILD		\
	     --prefix=/usr		\
	     --sysconfdir=/etc		\
	     --localstatedir=/var	\
	     --enable-frepo		\
	     $OPTS			&&
make					&&
make  check				&&
prepare_install				&&
make  install				&&
[ -d $LISPDIR ]  &&  
	/usr/bin/install  -m 644  src/gri-mode.el  $LISPDIR
