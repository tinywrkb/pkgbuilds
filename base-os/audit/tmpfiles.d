# audit
d /var/etc/audit - - - - -
C /var/etc/audit/audisp-remote.conf - - - - /usr/share/etc/audit/audisp-remote.conf
C /var/etc/audit/audit-stop.rules - - - - /usr/share/etc/audit/audit-stop.rules
C /var/etc/audit/auditd.conf - - - - /usr/share/etc/audit/auditd.conf
C /var/etc/audit/zos-remote.conf - - - - /usr/share/etc/audit/zos-remote.conf

d /var/etc/audit/plugins.d 0750 - - - -
C /var/etc/audit/plugins.d/af_unix.conf - - - - /usr/share/etc/audit/plugins.d/af_unix.conf
C /var/etc/audit/plugins.d/au-remote.conf - - - - /usr/share/etc/audit/plugins.d/au-remote.conf
C /var/etc/audit/plugins.d/audispd-zos-remote.conf - - - - /usr/share/etc/audit/plugins.d/audispd-zos-remote.conf
C /var/etc/audit/plugins.d/syslog.conf - - - - /usr/share/etc/audit/plugins.d/syslog.conf

# not handled /etc/libaudit.conf

d /var/log/audit 0700 - - - -
