SUBDIRS = $(PLUGINS)
DIST_SUBDIRS = fast-syntax-higlighting you-should-use zaw zsh-autosuggestions
zsh_contrib_dir = $(pkgdatadir)/site-contrib
zsh_contrib__DATA = $(wildcard units/*.zsh) units/ls-colors.zsh
zsh_functions_dir = $(pkgdatadir)/site-functions
zsh_functions__DATA = $(wildcard functions/*)
dist_pkgdata_DATA = $(wildcard *.zsh)
dist_doc_DATA = README.md
man1_MANS = man/zsh-bkg.1
EXTRA_DIST = units functions

if MAN2ROFF
man/zsh-bkg.1: README.md
	mkdir -p man
	$(MAN2ROFF) README.md > man/zsh-bkg.1
else
man/zsh-bkg.1: README.md
	$(error Please install md2man via 'gem install md2man' for generating manpages)
endif


if ENABLE_XDG
home_dir = $(HOME)
home__DATA = .zshrc

.zshrc: zshenv
	cp zshenv .zshrc

install-data-hook:
	test "@enable_xdg@" = 'yes' && mv @sysconfdir@/zshrc "$$HOME/.zshrc"; true
else
dist_pkgdata_DATA += zshrc

units/ls-colors.zsh: LS_COLORS
if DIRCOLORS
	dircolors -b $(srcdir)/LS_COLORS > $@
else
	touch $@
endif

zshrc: zshenv
	cat @srcdir@/zshenv > @srcdir@/zshrc

endif

@BKG_DEPLOY_GENTOO@
