caprice32_CFLAGS = -ansi -std=C99 -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -finline-functions -s 
caprice32_CXXFLAGS = -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -finline-functions -s
caprice32_CPPFLAGS = -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -finline-functions -s

caprice32_LDFLAGS = `sdl-config --libs` -lz

bin_PROGRAMS = caprice32
caprice32_SOURCES = caprice32.cpp crtc.c fdc.c glfunclist.h glfuncs.h rom_mods.c tape.h video.h z80daa.h \
	caprice32.h crtc.h font.c glfuncs.cpp psg.c tape.c video.cpp z80.c z80.h

include_HEADERS = caprice32.h  crtc.h  glfunclist.h  glfuncs.h  tape.h  video.h  z80daa.h  z80.h

