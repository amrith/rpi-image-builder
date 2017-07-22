rpi-debian-core

A base element that will produce a primitive Raspberry PI image. It
does this by repackaging the basic debian bootstrap. Use it in
conjunction with rpi-base which will produce a bootable image.

Environment Variables:

   This element uses the following environment variables.

   DIB_DISTRO_NAME:

      the debian distro name, default is stretch, you can also try
      jessie.

   DIB_DISTRO_URL:

      the location of the raspbian bootstrap, the default is
      http://mirrordirector.raspbian.org/raspbian

Using this element:

   Here is one way to invoke it

   disk-image-create rpi-debian-core rpi-base -a armhf -t raw -o <name>
