# systemd

# automatically created, comes from util-linux, here for documentation and avoiding a dangling link /mnt
d /run/mount - - - - -

d /var/etc/exports.d - - - - -
d /var/etc/modules-load.d - - - - -
d /var/etc/sysctl.d - - - - -
d /var/etc/userdb - - - - -

d /var/etc/systemd - - - - -
d /var/etc/systemd/network - - - - -
d /var/etc/systemd/system - - - - -
d /var/etc/systemd/user - - - - -

L+ /var/etc/systemd/coredump.conf - - - - /usr/share/etc/systemd/coredump.conf
L+ /var/etc/systemd/homed.conf - - - - /usr/share/etc/systemd/homed.conf
L+ /var/etc/systemd/journal-remote.conf - - - - /usr/share/etc/systemd/journal-remote.conf
L+ /var/etc/systemd/journal-upload.conf - - - - /usr/share/etc/systemd/journal-upload.conf
L+ /var/etc/systemd/journald.conf - - - - /usr/share/etc/systemd/journald.conf
L+ /var/etc/systemd/logind.conf - - - - /usr/share/etc/systemd/logind.conf
L+ /var/etc/systemd/networkd.conf - - - - /usr/share/etc/systemd/networkd.conf
L+ /var/etc/systemd/oomd.conf - - - - /usr/share/etc/systemd/oomd.conf
L+ /var/etc/systemd/pstore.conf - - - - /usr/share/etc/systemd/pstore.conf
L+ /var/etc/systemd/resolved.conf - - - - /usr/share/etc/systemd/resolved.conf
L+ /var/etc/systemd/sleep.conf - - - - /usr/share/etc/systemd/sleep.conf
L+ /var/etc/systemd/system.conf - - - - /usr/share/etc/systemd/system.conf
L+ /var/etc/systemd/timesyncd.conf - - - - /usr/share/etc/systemd/timesyncd.conf
L+ /var/etc/systemd/user.conf - - - - /usr/share/etc/systemd/user.conf

# zram-generator
L+ /var/etc/systemd/zram-generator.conf.example - - - - /usr/share/doc/zram-generator/zram-generator.conf.example

d /var/etc/tmpfiles.d - - - - -

# udev
d /var/etc/udev - - - - -
d /var/etc/udev/hwdb.d - - - - -
d /var/etc/udev/rules.d - - - - -
L- /var/etc/udev/udev.conf - - - - /usr/share/etc/udev/udev.conf

# localtime
# two layers of symlinks, needs the proper change in systemd
# TODO: drop this after implementing TZ support in time-util
L /var/etc/localtime - - - - /usr/share/zoneinfo/UTC

# TODO: re-evaluate this, need to take in consideation local dns and quick switch settings
#       maybe create a helper script to do the switch when local dns is broken
#       maybe reconsider using systemd-resolved caching capability with multiple dns servers,
#        local and remote (google+smartdnsproxy)
L- /var/etc/resolv.conf - - - - /run/systemd/resolve/stub-resolv.conf

f /var/etc/hostname - - - - archlinux-%b
f /var/etc/machine-id - - - - -
f /var/etc/machine-info - - - - -

f /var/etc/adjtime - - - - -

d /var/log/journal - - - - -

## base: systemd-homed
d /var/homes 755 - - - -
# already being created by systemd-homed and by initrd when needed early
#d /var/lib/systemd/home 755 - - - -
