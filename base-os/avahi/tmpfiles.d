# avahi
# TODO: revisit security implications, consider forcing a restictive policy while enabling client service
# TODO: should it be still possible to enable the daemon for private network servers? or maybe use containers for this?
#C /var/etc/avahi - - - - /usr/share/etc/avahi
d /var/etc/avahi - - - - -
d /var/etc/avahi/services - - - - -
L+ /var/etc/avahi/avahi-autoipd.action - - - - /usr/share/etc/avahi/avahi-autoipd.action
L+ /var/etc/avahi/avahi-dnsconfd.action - - - - /usr/share/etc/avahi/avahi-dnsconfd.action
L- /var/etc/avahi/avahi-daemon.conf - - - - /usr/share/etc/avahi/avahi-daemon.conf
L- /var/etc/avahi/hosts - - - - /usr/share/etc/avahi/hosts
