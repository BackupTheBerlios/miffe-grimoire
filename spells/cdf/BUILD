INSTALLDIR=/usr
DEFS=src/definitions/definitions

LINE=$( grep -n "^export CDF_BASE" $DEFS.B | cut -d ":" -f 1 )
sed  -i "${LINE},${LINE}d"	$DEFS.B
sed  -i "${LINE}iexport CDF_BASE; CDF_BASE=$INSTALLDIR"	$DEFS.B
LINE=$( grep -n "^setenv CDF_BASE" $DEFS.C | cut -d ":" -f 1 )
sed  -i "${LINE},${LINE}d"	$DEFS.C
sed  -i "${LINE}isetenv CDF_BASE $INSTALLDIR"	$DEFS.C
LINE=$( grep -n "^export CDF_BASE" $DEFS.K | cut -d ":" -f 1 )
sed  -i "${LINE},${LINE}d"	$DEFS.K
sed  -i "${LINE}iexport CDF_BASE=$INSTALLDIR"	$DEFS.K

	
make  OS=linux ENV=gnu all		&&
make  test				&&
prepare_install				&&
make  INSTALLDIR=/usr install
