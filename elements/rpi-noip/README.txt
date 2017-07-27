rpi-noip

   rpi-noip will download and install the noip DDNS client. Actually
   configuring the software requires a knowledge of which 'host' this
   is going to be, so this cannot be done in the element and has to be
   done by someone once the image is launched.

   However, if a configuration file is provided, it will be installed.

   As the installation of noip requires that you build the software,
   this element depends on rpi-build-essential which installs make and
   a compiler.

Environment Variables:

   RPI_NOIP_CONFIG_FILE (optional)

   If provided, a path to a configuration file that will be installed,
   and noip will be enabled.
