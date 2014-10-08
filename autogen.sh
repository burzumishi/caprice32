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

# Clean generated files:
# make distclean
# rm -rf ltmain.sh m4 missing install-sh config.sub config.guess compile INSTALL depcomp README NEWS COPYING ChangeLog AUTHORS aclocal.m4 autom4te.cache Makefile.in configure src/Makefile.in config.h.in~
