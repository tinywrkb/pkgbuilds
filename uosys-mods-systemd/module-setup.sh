#!/bin/bash

check() {
    return 0
}

install() {
    inst_multiple $systemdsystemunitdir/initrd-fs.target.wants/create-machine-id.service \
      /usr/bin/uuidgen \
      /usr/lib/libuuid.so \
      /usr/lib/os/create-machine-id
}
