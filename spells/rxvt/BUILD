(
      ./configure --build=$BUILD                \
                  --prefix=/usr                 \
                  --sysconfdir=/etc             \
                  --localstatedir=/var          \
                  --enable-shared               \
		  --enable-transparency		\
                  $OPTS                         &&
      make                                      &&
      make clock				&&
      prepare_install                           &&
      make install
 ) > $C_FIFO 2>&1
