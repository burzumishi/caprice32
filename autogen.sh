#!/bin/sh

libtoolize
aclocal
autoconf
autoheader

ln -sf README.md README
ln -sf README.md NEWS
ln -sf README.md AUTHORS
ln -sf README.md ChangeLog
ln -sf README.md COPYING

automake -a

if [ -f "configure" ]; then
	./configure --prefix=/opt/caprice32
fi;

