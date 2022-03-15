#!/bin/bash

check() {
    require_binaries /bin/pwck
}

install() {
    inst_multiple \
      $systemdsystemunitdir/initrd-fs.target.wants/sysroot-etc-shadow-premount-check.service \
      $systemdsystemunitdir/initrd-fs.target.wants/sysroot-etc-shadow.mount
    inst /bin/pwck
}
