      ./configure --build=$BUILD                \
                  --prefix=/usr                 \
                  --sysconfdir=/etc             \
                  --localstatedir=/var          \
                  --enable-shared               \
		  --enable-debug		\
                  $OPTS                         &&
      make                                      &&
      prepare_install                           &&
      make install
