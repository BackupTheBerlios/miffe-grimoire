(
	./setup.py configure	--imaging-include=/usr/include	\
				$OPTS			&&
	./setup.py build				&&
	prepare_install					&&
	./setup.py install	--prefix=/usr		
) > $C_FIFO 2>&1
