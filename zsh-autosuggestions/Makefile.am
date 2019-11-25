prefix         ?= @prefix@
exec_prefix    ?= @exec_prefix@
sugest_dir = $(pkgdatadir)
src_dir = $(pkgdatadir)/src/
strageties_dir = $(pkgdatadir)/src/strategies
sugest__DATA = zsh-autosuggestions.plugin.zsh zsh-autosuggestions.zsh
src__DATA = src/async.zsh src/bind.zsh src/config.zsh src/fetch.zsh \
			src/highlight.zsh src/start.zsh src/util.zsh src/widgets.zsh
strageties__DATA = src/strategies/completion.zsh src/strategies/history.zsh \
				   src/strategies/match_prev_cmd.zsh
dist_doc_DATA = CHANGELOG.md DESCRIPTION INSTALL.md LICENSE README.md URL VERSION
EXTRA_DIST = $(sugest__DATA) $(src__DATA) $(strageties__DATA)

@BKG_DEPLOY_GENTOO@
