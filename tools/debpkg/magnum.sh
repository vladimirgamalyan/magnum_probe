#!/usr/bin/env bash

rm -r build_magnum
mkdir build_magnum
cd build_magnum
git clone git://github.com/mosra/magnum
cd magnum
ln -s package/debian .
dpkg-buildpackage --no-sign


