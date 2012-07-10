#!/bin/sh -e
VER=2.6.0
PNAME=xf86-input-evdev
test -e $PNAME-$VER.tar.bz2 || wget ftp://ftp.x.org/pub/individual/driver/$PNAME-$VER.tar.bz2
rm -rf $PNAME-$VER;tar -xf $PNAME-$VER.tar.bz2
cd $PNAME-$VER

./configure --prefix=/
make || exit 1
make DESTDIR="$1" install || exit 1

cd ..
rm -rf $PNAME-$VER
