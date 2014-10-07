#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])

PACKAGE=caprice32

XSMAUG_MAJOR_VERSION=5
XSMAUG_MINOR_VERSION=0

VERSION=$XSMAUG_MAJOR_VERSION.$XSMAUG_MINOR_VERSION

AC_INIT([Caprice32], [5.0],
	[<antoniocao000@gmail.com>],
	[caprice32])

LT_INIT
LT_LANG([C++])

AC_CONFIG_SRCDIR([src/crtc.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])

AC_CANONICAL_HOST
AC_CANONICAL_BUILD

AM_INIT_AUTOMAKE([-Wno-all -Wno-cast-align -Wno-unused-result -Wno-write-strings])

AC_DEFINE_UNQUOTED([PREFIX], ["/opt/caprice32/"], [Define to the root directory.])
AC_DEFINE_UNQUOTED([BINDIR], ["${prefix}/bin/"], [Define Executable Directory.])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_LIBTOOL
AC_PROG_AWK
AC_LANG([C++])
AC_LANG_PUSH([C++])
AC_SUBST(LIBTOOL_DEPS)
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET

# Checks for libraries.
AC_CHECK_LIB([z], [main])
AC_CHECK_LIB([SDL], [main])

# Checks for header files.
AC_CHECK_HEADERS([SDL/SDL.h stdint.h stdlib.h string.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_OFF_T
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T
AC_TYPE_UID_T
AC_TYPE_INT64_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T
AC_STRUCT_TIMEZONE


# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([atexit getcwd memset pow rint strcasecmp strcspn strncasecmp strrchr strtol strtoul])

AC_CONFIG_FILES([Makefile src/Makefile])

LT_OUTPUT
AC_OUTPUT

