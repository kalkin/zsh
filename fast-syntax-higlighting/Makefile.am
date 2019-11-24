fast_dir = $(pkgdatadir)
chroma_dir = $(pkgdatadir)/:chroma
themes_dir = $(pkgdatadir)/themes
fast__DATA = $(wildcard fast-*)
themes__DATA = $(wildcard themes/*.ini) 
dist_doc_DATA = CHROMA_GUIDE.adoc README.md CHANGELOG.md DONATIONS.md LICENSE \
				THEME_GUIDE.md

install-data-hook:
	cp -- $(wildcard $(builddir)/-fast-*) $(DESTDIR)$(fast_dir)
	mkdir -p $(DESTDIR)$(chroma_dir)
	cp -- $(wildcard $(builddir)/:chroma/*.ch) $(DESTDIR)$(chroma_dir)


uninstall-hook:
	rm -rf $(fast_dir)

@BKG_RPM_TEMPLATE@
