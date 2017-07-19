rpi-base

A base element that will produce a usable Raspberry PI image. It
depends on some other element to provide the operating system; this
could be rpi-raspbian-core or rpi-debian-core.

Usage:

   disk-image-create rpi-raspbian-core rpi-base -a armhf -t raw -o <name>

Environment variables:

   RPI_MAKE_RPI_USER: (default: Y)

      The rpi-base element will attempt to create a user 'rpi' with a
      password 'rpi' and will set the root password to 'rpiroot'. It
      will setup the 'rpi' user to be sudo enabled with no password.

      This behavior may be suitable for simple image builds, and is
      suitable for simple debugging and experimentation. It is
      analogous to the default Raspbian image which creates a user
      'pi'. However, more complex images can override this behavior by
      setting RPI_MAKE_USER to 'N', 'n' or '0' in their respective
      environment.d sections and thereby prevent the creation of this
      user.
