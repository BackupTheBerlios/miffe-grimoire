export	CPPFLAGS="-Df2cFortran"
export	FFLAGS="-Wno-globals"

cd src					&&
./configure  --build=$BUILD		\
	     --prefix=/usr		\
	     --sysconfdir=/etc		\
	     --localstatedir=/var	\
	     $OPTS			&&
make					&&
make  test				&&
prepare_install				&&
make  install
