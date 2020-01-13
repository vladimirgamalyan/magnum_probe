#!/usr/bin/env bash

if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

dpkg -i build_corrade/corrade*.deb

