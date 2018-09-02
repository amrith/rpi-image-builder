rpi-generic

   A simple wrapper element that produces an image for my RPI the way
   I like it, by layering on top of a (specified) OS image.

   To use this element, you must specify the following:

   RPI_SECURE_USER_NAME (used by rpi-secure-user)
   RPI_SSID and RPI_WIFI_PASSPHRASE (used by rpc-wifi)

   For example, I build my debian based image as follows:

      #!/bin/bash

      unset RPI_VERBOSE

      if [ -n ${RPI_VERBOSE} ]; then set -ex; else set -e; fi

      export RPI_SECURE_USER_NAME=$(whoami)
      export ELEMENTS_PATH=./rpi-image-builder/elements/
      export RPI_SSID="devwifi"
      export RPI_WIFI_PASSPHRASE="7vwagjeE9NaY"

      time disk-image-create rpi-debian-core rpi-generic -a armhf -o debian -t raw -n

   About 12 minutes later, I have a debian.raw file of exactly 2GB
   (that's the size that rpi-base picks) which I can then burn onto my MicroSD card as:

   sudo dd if=./debian.raw of=/dev/sdc bs=4M

   This element wraps

       rpi-base
       rpi-resize-root
       rpi-secure-user
       rpi-wifi
       rpi-znc

   Note that this element does not wrap the OS element, I could
   equally well build a Raspbian based image by changing
   rpi-debian-core with rpi-raspbian-core in the command above, like:

       time disk-image-create rpi-debian-core rpi-generic -a armhf -o debian -t raw -n
