SUBDIRS = you-should-use fast-syntax-higlighting zaw zsh-autosuggestions
zsh_contrib_dir = $(pkgdatadir)/site-contrib
zsh_contrib__DATA = $(wildcard units/*.zsh)
zsh_functions_dir = $(pkgdatadir)/site-functions
zsh_functions__DATA = $(wildcard functions/*)
dist_pkgdata_DATA = $(wildcard *.zsh) LS_COLORS
if ENABLE_XDG
home_dir = $(HOME)
home__DATA = .zshrc

.zshrc: zshenv
	cp zshenv .zshrc

install-data-hook:
	test "@enable_xdg@" = 'yes' && mv @sysconfdir@/zshrc "$$HOME/.zshrc"; true
else
dist_pkgdata_DATA += zshrc

zshrc: zshenv
	cat @srcdir@/zshenv > @srcdir@/zshrc
install-data-hook:
	grep -q "source $(pkgdatadir)/zshrc" @sysconfdir@/zshrc || echo "source $(pkgdatadir)/zshrc" >> @sysconfdir@/zshrc

uninstall-hook:
	sed -e "s#source $(pkgdatadir)/zshrc##" @sysconfdir@/zshrc -i

endif
