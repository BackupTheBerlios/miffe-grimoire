(
	/bin/sh	build/gnuauto/setup.sh		&&
	./configure --build=$BUILD		\
                  --prefix=/usr                 \
                  --sysconfdir=/etc             \
                  --localstatedir=/var          \
                  --enable-shared               \
		  --with-gnu-ld			\
                  $OPTS                         &&
      make                                      &&
      prepare_install                           &&
      make install
 ) > $C_FIFO 2>&1
