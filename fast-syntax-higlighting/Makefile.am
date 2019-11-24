fast_dir = $(pkgdatadir)
chroma_dir = $(pkgdatadir)/:chroma
themes_dir = $(pkgdatadir)/themes
fast__DATA = $(wildcard fast-*)
themes__DATA = $(wildcard themes/*.ini) 
dist_doc_DATA = CHROMA_GUIDE.adoc README.md CHANGELOG.md DONATIONS.md LICENSE \
				THEME_GUIDE.md

install-data-hook:
	cp -- $(wildcard -fast-*) $(fast_dir)
	mkdir -p $(chroma_dir)
	cp -- $(wildcard :chroma/*.ch) $(chroma_dir)


uninstall-hook:
	rm -rf $(fast_dir)
