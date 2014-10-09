caprice32_CFLAGS = -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -Wno-write-strings -finline-functions -s 
caprice32_CXXFLAGS = -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -Wno-write-strings -finline-functions -s
caprice32_CPPFLAGS = -O2 -funroll-loops -ffast-math -fomit-frame-pointer -fno-strength-reduce -Wno-write-strings -finline-functions -s

caprice32_LDFLAGS = `sdl-config --libs` -lz

bin_PROGRAMS = caprice32
caprice32_SOURCES = caprice32.cpp crtc.cpp fdc.cpp rom_mods.cpp font.cpp glfuncs.cpp psg.cpp tape.cpp video.cpp z80.cpp

include_HEADERS = caprice32.h  crtc.h  glfunclist.h  glfuncs.h  tape.h  video.h  z80daa.h  z80.h

