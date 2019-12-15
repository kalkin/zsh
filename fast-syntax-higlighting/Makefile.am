fast_dir = $(pkgdatadir)
chroma_dir = $(pkgdatadir)/:chroma
themes_dir = $(pkgdatadir)/themes
fast__DATA = fast-highlight fast-read-ini-file fast-string-highlight \
			 fast-syntax-highlighting.plugin.zsh fast-theme
themes__DATA = $(wildcard themes/*.ini) 
dist_doc_DATA = CHROMA_GUIDE.adoc README.md CHANGELOG.md DONATIONS.md LICENSE \
				THEME_GUIDE.md
EXTRA_DIST = $(fast__DATA) themes \
			 fast-syntax-highlighting.spec.in fast-syntax-highlighting.spec \
			 fast-syntax-highlighting.ebuild.in fast-syntax-highlighting.ebuild

install-data-hook:
	cp -- $(wildcard $(builddir)/-fast-*) $(DESTDIR)$(fast_dir)
	mkdir -p $(DESTDIR)$(chroma_dir)
	cp -- $(wildcard $(builddir)/:chroma/*.ch) $(DESTDIR)$(chroma_dir)

dist-hook:
	cp -- $(wildcard -fast-*) $(distdir)/
	mkdir -p $(distdir)/:chroma
	cp -- $(wildcard :chroma/*.ch) $(distdir)/:chroma

uninstall-hook:
	rm -rf $(fast_dir)

@BKG_RPM_TEMPLATE@

@BKG_DEPLOY_GENTOO@
