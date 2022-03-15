# cockpit
# TODO: report this nonsense?
# TODO: test without this
d /var/etc/cockpit - - - - -
d /var/etc/cockpit/machines.d - - - - -
d /var/etc/cockpit/ws-certs.d - - - - -
d /var/lib/cockpit - root systemd-journal-remote - -
# workaround as for unknown reason this is broken with the cockpit
d /run/cockpit 0755 - - - -

# cockpit-pcp pcp
#d /var/lib/pcp - - - - -
#d /var/log/pcp - pcp pcp - -
