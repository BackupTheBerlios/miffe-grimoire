(
  make                                               &&
  prepare_install                                    &&
  install -m 755 i8kbuttons i8kctl i8kmon /usr/bin &&
  if $init
    then 
      install -m 755 $SCRIPT_DIR/i8k.sh /etc/init.d   &&
      install -m 755 $SCRIPT_DIR/i8kmixer.sh /usr/bin &&
      ln -sf /etc/init.d/i8k.sh /etc/rc3.d/S99i8k     &&
      ln -sf /etc/init.d/i8k.sh /etc/rc5.d/S99i8k
  fi
) >$C_FIFO 2>&1
