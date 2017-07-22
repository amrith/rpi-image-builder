rpi-journald-persistence

The default settings for systemd journald (in
/etc/systemd/journald.conf) call for auto persistence which means that
the journal is stored in /var/run/journal unless a /var/log/journal
directory is created and exists.

To force persistence and storage of data across reboots, we
reconfigure journald in this element.
