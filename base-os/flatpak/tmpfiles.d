# flatpak
# compat symlink, just in case the FLATPAK_SYSTEM_ vars are not respected
L /var/lib/flatpak - - - - /apps
# make sure the tmp dir is already there as flatpak might not create it
d /apps/tmp 1777 - - - -

# create an empty system installation repo, workaround for https://github.com/flatpak/flatpak/issues/4111
d /apps/repo
d /apps/repo/extensions
d /apps/repo/objects
d /apps/repo/refs
d /apps/repo/refs/heads
d /apps/repo/refs/mirrors
d /apps/repo/refs/remotes
d /apps/repo/state
d /apps/repo/tmp
d /apps/repo/tmp/cache
C /apps/repo/config - - - - /usr/share/flatpak/repo/config
C /apps/repo/flathub-beta.trustedkeys.gpg - - - - /usr/share/flatpak/repo/flathub-beta.trustedkeys.gpg
C /apps/repo/flathub.trustedkeys.gpg - - - - /usr/share/flatpak/repo/flathub.trustedkeys.gpg
C /apps/repo/kdeapps.trustedkeys.gpg - - - - /usr/share/flatpak/repo/kdeapps.trustedkeys.gpg
C /apps/repo/private.trustedkeys.gpg - - - - /usr/share/flatpak/repo/private.trustedkeys.gpg
