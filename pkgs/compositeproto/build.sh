#!/bin/sh -e
VER=0.4.2
PNAME=compositeproto
test -e $PNAME-$VER.tar.bz2 || wget ftp://ftp.x.org/pub/individual/proto/$PNAME-$VER.tar.bz2
rm -rf $PNAME-$VER;tar -xf $PNAME-$VER.tar.bz2
cd $PNAME-$VER

./configure --prefix=/
make DESTDIR=$1 install

cd ..
rm -rf $PNAME-$VER
