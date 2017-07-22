rpi-znc

   This element installs the znc (the IRC bouncer) application.

   This element cannot pre-configure ZNC as it does not support a nice
   unattended configuration process.

   Instead, once the machine is up and running, you can run:

   sudo -u znc /usr/bin/znc --datadir=/var/lib/znc --makeconf

   echo "PidFile = /var/run/znc/znc.pid" | sudo su - znc -s /bin/bash \
         -c "tee -a /var/lib/znc/configs/znc.conf"

   and then start the service

   systemctl enable znc
   systemctl start znc

   Source: https://wiki.znc.in/Running_ZNC_as_a_system_daemon
