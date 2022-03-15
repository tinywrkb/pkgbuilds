#!/bin/bash

# TODO: maybe enable the binary test, but consider failing  when the module is not being pulled in
check() {
    return 0
    #require_binaries /bin/findmount
}

depends() {
    echo fs-lib
}

install() {
    inst_multiple \
      $systemdsystemunitdir/initrd-fs.target.wants/run-os-mount.service \
      $systemdsystemunitdir/initrd-fs.target.wants/sysroot-efi-mount.service \
      $systemdsystemunitdir/initrd-fs.target.wants/sysroot-etc.mount \
      $systemdsystemunitdir/initrd-fs.target.wants/sysroot-mount.service \
      /usr/lib/os/run-os-mount \
      /usr/lib/os/sysroot-efi-mount \
      /usr/lib/os/sysroot-mount \
      /usr/lib/os/sysroot-mount-lib
}
