
gcc $CFLAGS -lm $LDFLAGS -o dcraw $( guess_filename ${SOURCE[0]} ) 	&&

prepare_install						&&
cp $( guess_filename ${SOURCE[1]} )  /usr/man/man1	&&
chmod 755 dcraw						&&
cp dcraw /usr/bin	
