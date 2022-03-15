# /usr/etc/sudoers.d/dist

Defaults:%wheel timestamp_timeout=-1

## allow members of group sudo to execute any command
%wheel ALL=(ALL) ALL


## extra sudoers settings for live media

## allow members of group sudo to execute any command without a password
%sudo ALL=(ALL) NOPASSWD: ALL
