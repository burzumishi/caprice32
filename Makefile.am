CC = g++

AM_CFLAGS = -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -finline-functions -s
AM_CXXFLAGS = -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -finline-functions -s
AM_CPPFLAGS = -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -finline-functions -s

bin_PROGRAMS=caprice32
caprice32_SOURCES=caprice32.cpp crtc.c fdc.c glfunclist.h glfuncs.h rom_mods.c tape.h video.h z80daa.h \
	caprice32.h crtc.h font.c glfuncs.cpp psg.c tape.c video.cpp z80.c z80.h

#  add " -lz" to the following if caprice32 requires the math library
caprice32_LDFLAGS=`sdl-config --libs` -lz

EXTRA_DIST=rom caprice32.conf autogen.sh README.md

#  install the man page
man_MANS=caprice32.1
