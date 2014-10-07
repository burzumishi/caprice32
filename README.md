Caprice32 - Amstrad CPC Emulator
----------------

(c) Copyright 1997-2004 Ulrich Doewich - [Old Caprice32] (http://sourceforge.net/projects/caprice32/)

Modified by Antonio Cao - [@burzumishi] (https://github.com/burzumishi) - [New Caprice32] (https://github.com/burzumishi/caprice32)


###WHAT IS IT?

**Caprice32** is a software emulator of the Amstrad CPC 8bit home computer series. The emulator faithfully imitates the CPC464, CPC664, and CPC6128 models. By recreating the operations of all hardware components at a low level, the emulator achieves a high degree of compatibility with original CPC software. These programs or games can be run unmodified at real-time or higher speeds, depending on the emulator host environment.

###USING THE SOURCE

The source for **Caprice32** is distributed under the terms of the GNU General Public License (GNU GPL), which is included in this archive as LICENSE. Please make sure that you understand the terms and conditions of the license before using the source.

I encourage you to get involved in the project - please see the **Caprice32** pages on GitHub for contact details.


###REQUIREMENTS

You will need the following to successfully compile an executable:

- [**MinGW**] (http://sourceforge.net/projects/mingw) (Only Windows)
- [**SDL**] (http://www.libsdl.org/index.php)
- [**zLib**] (http://www.gzip.org/zlib)


###Build Caprice32

To "configure" the source code use:

  ```./configure --prefix=/opt/caprice32```

Once finished you can build it with:

  ```make```

To install built binaries into your filesystem:

  ```make install```
  

###COMMENTS OR READY TO CONTRIBUTE?

If you have suggestions, a bug report or even want to join the development team, please feel free to use one of the many contact methods presented on the **Caprice32** project page on **GitHub**.
