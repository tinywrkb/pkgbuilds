# pacman
d /var/etc/pacman.d - - - - -
d /var/etc/pacman.d/conf - - - - -
L- /var/etc/pacman.d/conf/excluded.conf - - - - /etc/pacman.d/excluded.conf
f /var/etc/pacman.d/conf/local.conf - - - - -
d /var/etc/pacman.d/gnupg - - - - -
L+ /var/etc/pacman.d/gnupg/gpg.conf - - - - /etc/pacman.d/gpg.conf
d /var/etc/pacman.d/hooks - - - - -
d /var/lib/pacman - - - - -
# this is the previous workaround to keep db in /usr, now systemd service (rsync) creates these
#d /var/lib/pacman/sync - - - - -
#L /var/lib/pacman/local - - - - ../../../usr/share/pacman/db/local
# TODO: maybe it will be better to move this cache to somewhere else, so it would be archived better
#        and available to containers and vms
d /var/cache/pacman - - - - -
d /var/cache/pacman/pkg - - - - -
