sed -i "s:/usr/local/awstats:/usr/awstats:g"  tools/httpd_conf
sed -i "s:/usr/local/awstats:/usr/awstats:g"  tools/awstats_updateall.pl
sed -i "s:/usr/local/awstats:/usr/awstats:g"  tools/awstats_configure.pl
sed -i "s:/usr/local/awstats:/usr/awstats:g"  tools/awstats_buildstaticpages.pl
sed -i "s:/usr/local/awstats:/usr/awstats:g"  wwwroot/cgi-bin/awstats.pl

chown  -R root.root *
chmod  -R 644 *
chmod  -R a+X *
find  -name *.pl  |  xargs chmod a+x 

prepare_install 
					
[ ! -d /usr/awstats ]	&&  mkdir  /usr/awstats
cp  -r tools wwwroot /usr/awstats

echo  "$BSPELL installed"
