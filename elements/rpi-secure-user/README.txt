rpi-secure-user

   By default rpi-base sets up a simple system with a user (rpi) with
   a simple password (rpi). It enables root with a simple password as
   well. Those are fine for a simplistic system.

   rpi-secure-user locks down ssh and creates a more secure system. It
   does this by requiring key based authentication over ssh but still
   sets a simple password for local access.
