
  if [ -f /etc/httpd/httpd.conf ]; then 
	DOCROOT=`grep ^[:space:]*DocumentRoot /etc/httpd/httpd.conf | \
		cut -d " " -f 2 -s | sed "s:\"::g"`
  else
	DOCROOT=/usr/share
  fi
  GCONF=configure.sh

  prepare_install					

  [ -f $DOCROOT/gallery/$GCONF ] && 
		/bin/sh $DOCROOT/gallery/$GCONF		
  OLD_DIR=`pwd`				
  echo	"Copying files to $DOCROOT/gallery."
  mkdir	$DOCROOT/gallery
  cp	-a  *  $DOCROOT/gallery
  cd	$DOCROOT/gallery
  chown	-R  root.root  * 

  echo	"Creating config.php and .htaccess"	
  touch config.php .htaccess			
  chmod 0777 config.php .htaccess			
  chmod 0755 setup				
  cd ..
  if [ ! -d albums ]; then
	echo	"Creating directory $DOCROOT/albums"
	mkdir	albums
	chmod	0777  albums
  fi
  cd $OLD_DIR
