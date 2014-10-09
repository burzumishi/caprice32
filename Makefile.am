CC = g++
CPP = g++
CXX = g++

ACLOCAL_AMFLAGS = -I m4

SUBDIRS = src

EXTRA_DIST=rom autogen.sh Doxyfile.in README.md

CLEANFILES = caprice32.conf

etcdir = $(sysconfdir)/@PACKAGE@
etc_DATA = caprice32.conf

do_subst = sed -e 's,[@]sharedstatedir[@],$(sharedstatedir),g' \
		-e 's,[@]localstatedir[@],$(localstatedir),g' \
		-e 's,[@]sysconfdir[@],$(sysconfdir),g' \
		-e 's,[@]prefix[@],$(prefix),g' \
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

#  install the man page
man_MANS=man/caprice32.1

all-local:
	@echo "=== all-local done ==="

clean-local: clean-doc
	@echo "=== clean-local done ==="

distclean-local: distclean-doc
	@echo "=== distclean-local done ==="

install-data-local: all-doc install-doc
	@echo "=== install-data-local done ==="

uninstall-local: uninstall-doc
	@echo "=== uninstall-local done ==="

if HAVE_DOXYGEN
all-doc:
	$(DOXYGEN) Doxyfile

clean-doc:
	rm -rf $(top_builddir)/doc

distclean-doc:
	rm -rf $(top_builddir)/doc

install-doc:
	$(mkdir_p) $(DESTDIR)$(docdir)
	cp -rf doc/html $(DESTDIR)$(docdir)

uninstall-doc:
	-rm -rf $(DESTDIR)$(docdir)/html
	-rmdir $(DESTDIR)$(docdir)
else
all-doc:
	@echo "*** Doxygen is not available ***"

clean-doc:
	@echo "*** Doxygen is not available ***"

distclean-doc:
	@echo "*** Doxygen is not available ***"

install-doc:
	@echo "*** Doxygen is not available ***"

uninstall-doc:
	@echo "*** Doxygen is not available ***"
endif

install-data-hook:
	@echo "Installing <<@PACKAGE@>> data files ..."; \
	mkdir -pv $(prefix)/share/@PACKAGE@; \
	cp -rvf rom $(prefix)/share/@PACKAGE@/; \
	echo ""; \
	echo "<<@PACKAGE@>> has ben installed on <<$(prefix)>> directory!"; \
	echo "You can execute <<caprice32>> now!"; \
	echo "";
