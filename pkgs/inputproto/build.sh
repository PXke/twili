#!/bin/sh -e
VER=2.0.1
PNAME=inputproto
test -e $PNAME-$VER.tar.bz2 || wget ftp://ftp.x.org/pub/individual/proto/$PNAME-$VER.tar.bz2
rm -rf $PNAME-$VER;tar -xf $PNAME-$VER.tar.bz2
cd $PNAME-$VER

./configure --prefix=/
make DESTDIR=$1 install

cd ..
rm -rf $PNAME-$VER
