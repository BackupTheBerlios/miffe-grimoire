

echo ${OPT[*]} | grep -q "enable-apop"		&&  APOP=1
echo ${OPT[*]} | grep -q "disable-standalone"	&&  XID=1
echo ${OPT[*]} | grep -q "with-openssl"		&&  SSL=1
echo ${OPT[*]} | grep -q "with-pam"		&&  PAM=1


if [ $APOP -eq 1 ]; then  
	groupadd  pop		2>/dev/null ;	\
	useradd   pop  -g  pop  2>/dev/null
fi


./configure  --prefix=/usr                   \
	     --build=$BUILD		     \
	     --sysconfdir=/etc		     \
	     --localstatedir=/var	     \
             $OPTS                          &&
make  			                    &&
prepare_install                             &&
make  install 				    &&


cp GUIDE.pdf /usr/doc/qpopper/doc


if [ $APOP -eq 1 ]; then
  chown  pop  /usr/sbin/popauth
  chmod  u+s  /usr/sbin/popauth
  [ -f /etc/pop.auth ]  ||  popauth  -init
fi

if [ $SSL -eq 1 ]; then
  mkdir  -p -m 665	/etc/mail/certs
  chown  root:mail	/etc/mail/certs
  chmod  660		/etc/mail/certs
  echo  "Use openssl to create a public-private key pair and a certificate"
  echo  "signing request (csr)."  
fi

[ -f /etc/qpopper.conf ]  ||  		\
	install  -m 600 -g 0 -o 0  $SCRIPT_DIR/qpopper.conf /etc
