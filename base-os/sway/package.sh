#!/bin/bash

for f in conf-*.conf; do
  install -Dm644 $f ${pkgdir}/etc/sway/${f#conf-}
done

for f in conf.d-*.conf; do
  install -Dm644 $f ${pkgdir}/etc/sway/conf.d/${f#conf.d-}
done

for f in start-sway{,-session} wm{bar{,-status,-toggle-hide},flash,kbd,snap}; do
  install -Dm755 $f -t ${pkgdir}/usr/bin/
done
