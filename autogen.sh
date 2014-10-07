#!/bin/sh

aclocal
autoconf

ln -sf README.md README
ln -sf README.md NEWS
ln -sf README.md AUTHORS
ln -sf README.md ChangeLog

automake -a

if [ -f "configure" ]; then
	./configure --prefix=/usr
fi;

