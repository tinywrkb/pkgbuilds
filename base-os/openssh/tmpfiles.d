# openssh
d /var/etc/ssh - - - - -
L+ /var/etc/ssh/moduli - - - - /usr/share/etc/ssh/moduli
L+ /var/etc/ssh/ssh_config - - - - /usr/share/etc/ssh/ssh_config
f /var/etc/ssh/ssh_known_hosts - - - - -
L- /var/etc/ssh/sshd_config - - - - /usr/share/etc/ssh/sshd_config
f /var/etc/ssh/sshd_config.local - - - - "# OpenSSH daemon local machine settings. For complete override, replace the sshd_config symlink"
