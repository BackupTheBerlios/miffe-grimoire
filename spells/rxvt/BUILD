      ./configure --build=$BUILD                \
                  --prefix=/usr                 \
                  --sysconfdir=/etc             \
                  --localstatedir=/var          \
                  --enable-shared               \
		  --enable-utmp			\
		  --enable-wtmp			\
		  --enable-transparency		\
		  --enable-xim			\
                  $OPTS                         &&
      make                                      &&
      make clock				&&
      prepare_install                           &&
      make install				&&
      chmod  u+s  /usr/bin/rxvt
