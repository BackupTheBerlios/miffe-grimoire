./configure  --build=$BUILD		\
	     --prefix=/usr		\
	     --sysconfdir=/etc		\
	     --localstatedir=/var	\
	     --with-szlib		\
	     $OPTS			&&
make					&&
make  check				&&
prepare_install				&&
make  install
