# podman
d /var/etc/containers - - - - -

# cni-plugins
d /var/etc/cni/net.d

# containers-common
# TODO: maybe by default bind-mount from or symlink to /containers or /data/containers or /data/var/lib/containers
d /var/lib/containers - - - - -

# podman-compose
d /var/etc/containers/compose - - - - -