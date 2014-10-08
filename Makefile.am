CC = g++
CPP = g++
CXX = g++

ACLOCAL_AMFLAGS = -I m4

SUBDIRS = src

EXTRA_DIST=rom autogen.sh README.md

CLEANFILES = caprice32.conf

etcdir = $(sysconfdir)/@PACKAGE@
etc_DATA = caprice32.conf

do_subst = sed -e 's,[@]sharedstatedir[@],$(sharedstatedir),g' \
		-e 's,[@]localstatedir[@],$(localstatedir),g' \
		-e 's,[@]sysconfdir[@],$(sysconfdir),g' \
		-e 's,[@]bindir[@],$(bindir),g' \
		-e 's,[@]mandir[@],$(mandir),g' \
		-e 's,[@]PERL[@],$(PERL),g' \
		-e 's,[@]CC[@],$(CC),g' \
		-e 's,[@]CXX[@],$(CXX),g' \
		-e 's,[@]PACKAGE[@],$(PACKAGE),g' \
		-e 's,[@]VERSION[@],$(VERSION),g'

caprice32.conf: caprice32.conf.in Makefile
	$(do_subst) < $(srcdir)/caprice32.conf.in > caprice32.conf

docdir = $(datarootdir)/doc/@PACKAGE@
doc_DATA = README AUTHORS INSTALL NEWS LICENSE ChangeLog 

rundir = $(datarootdir)/@PACKAGE@

#  install the man page
man_MANS=man/caprice32.1

install-data-hook:
	@echo "Installing <@PACKAGE@> data files ..."; \
	mkdir -pv $(sharedstatedir)/@PACKAGE@; \
	cp -rvf rom $(sharedstatedir)/@PACKAGE@/; \
	echo "Installing <@PACKAGE@> man pages ..."; \
	mkdir -pv $(mandir)/man1; \
	echo "Installing <@PACKAGE@> documentation ..."; \
	cp man/caprice32.1 $(mandir)/man1/caprice32.1; \
	echo ""; \
	echo "<@PACKAGE@> has ben installed on <$(prefix)> directory!"; \
	echo "You can execute Caprice32 now!"; \
	echo "";


