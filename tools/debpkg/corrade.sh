#!/usr/bin/env bash

rm -r build_corrade
mkdir build_corrade
cd build_corrade
git clone git://github.com/mosra/corrade
cd corrade
ln -s package/debian .
dpkg-buildpackage --no-sign

