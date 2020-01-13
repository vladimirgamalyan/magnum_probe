#!/usr/bin/env bash

if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

dpkg -P corrade corrade-dev magnum magnum-dev
apt update
apt install -yy debhelper libopenal-dev libglfw3-dev

echo "next, run:"
echo "./corrade.sh"
echo "./sudo corrade_install.sh"
echo "./magnum.sh"
echo "./sudo magnum_install.sh"
echo "remove artefact folders"

