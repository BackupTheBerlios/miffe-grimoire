JNI=""
if [ -z $BRANCH ]; then 
	echo $OPTS | grep -q "without-javadx"	||
	JNI="--with-jni-path=$( dirname $( augur install j2sdk | grep jni.h ) ):$( dirname $( augur install j2sdk | grep jni_md.h ) )"
fi 

./configure  --build=$BUILD		\
	     --prefix=/usr		\
	     --sysconfdir=/etc		\
	     --localstatedir=/var	\
	     $JNI			\
	     $OPTS			&&
make					&&
prepare_install				&&
make  install		
