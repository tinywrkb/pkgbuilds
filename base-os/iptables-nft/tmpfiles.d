# iptables-nft
#C /var/etc/iptables - - - - /usr/etc/compat/iptables
d /var/etc/iptables - - - - -
L- /var/etc/iptables/ip6tables.rules - - - - /usr/share/etc/iptables/ip6tables.rules
L- /var/etc/iptables/iptables.rules - - - - /usr/share/etc/iptables/iptables.rules
