# dwm version
VERSION = 6.2

# Customize below to fit your system

# paths
PREFIX = ${HOME}/.local
MANPREFIX = ${PREFIX}/share/man

# OpenBSD
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# FreeBSD
# X11INC = /usr/local/include
# X11LIB = /usr/local/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft

# Linux
FREETYPEINC = /usr/include/freetype2

# BSD (uncomment)
# FREETYPEINC = ${X11INC}/freetype2

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC} -I${XDG_CACHE_HOME}/themes/

LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS} -lXrender

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=2 -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS   = -O2 -pipe -std=c99 -pedantic -Wall -Wno-deprecated-declarations ${INCS} ${CPPFLAGS}
LDFLAGS  = ${LIBS} -lXrender

# compiler and linker
CC = cc
