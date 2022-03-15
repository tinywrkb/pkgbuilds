# cups
d /var/etc/cups - - - - -
d /var/etc/cups/ssl - - - - -
d /var/etc/cups/ppd - - - - -
C /var/etc/cups/classes.conf - - - - /usr/share/etc/cups/classes.conf
C /var/etc/cups/cups-files.conf - - - - /usr/share/etc/cups/cups-files.conf
C /var/etc/cups/cups-files.conf.default - - - - /usr/share/etc/cups/cups-files.conf.default
C /var/etc/cups/cupsd.conf - - - - /usr/share/etc/cups/cupsd.conf
C /var/etc/cups/cupsd.conf.default - - - - /usr/share/etc/cups/cupsd.conf.default
C /var/etc/cups/printers.conf - - - - /usr/share/etc/cups/printers.conf
C /var/etc/cups/snmp.conf - - - - /usr/share/etc/cups/snmp.conf
C /var/etc/cups/snmp.conf.default - - - - /usr/share/etc/cups/snmp.conf.default
C /var/etc/cups/subscriptions.conf - - - - /usr/share/etc/cups/subscriptions.conf
f /var/etc/cups/printcap - - - - -
d /var/cache/cups 0770 - - - -
d /var/cache/cups/rss 0775 - - - -
d /var/log/cups - - - - -
d /var/spool/cups 0710 - - - -
d /var/spool/cups/tmp 1770 - - - -

# cups-filters
C /var/etc/cups/cups-browsed.conf - - - - /usr/share/etc/cups/cups-browsed.conf
