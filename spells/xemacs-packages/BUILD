if [ -n "$BRANCH" ]; then
   PKGDIR=/usr/lib/xemacs/xemacs-packages  &&
   prepare_install                         &&
   [ -d $PKGDIR ] || mkdir -p $PKGDIR      &&
   cd $PKGDIR                              &&
   unpack $SOURCE                          &&
   cd -
fi

echo "$BSPELL installed"

