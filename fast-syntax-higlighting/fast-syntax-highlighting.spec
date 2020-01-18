# fast-syntax-highlighting.spec.  Generated from fast-syntax-highlighting.spec.in by configure.
Name:           fast-syntax-highlighting
Version:        1.54.4
Release:        1%{?dist}
Summary:        Feature rich syntax highlighting for Zsh
License:        BSD

Requires:       zsh

%description
Syntax highlighting for ZSH.

%global debug_package %{nil}
%define _builddir %(pwd)
%define _sourcedir %(pwd)

%prep
%autosetup -T -D -n .

%build
%configure
%make_build

%check
%{_rpmconfigdir}/check-rpaths

%install
%make_install

%files
%{_docdir}/fast-syntax-highlighting/CHANGELOG.md
%{_docdir}/fast-syntax-highlighting/CHROMA_GUIDE.adoc
%{_docdir}/fast-syntax-highlighting/DONATIONS.md
%{_docdir}/fast-syntax-highlighting/LICENSE
%{_docdir}/fast-syntax-highlighting/README.md
%{_docdir}/fast-syntax-highlighting/THEME_GUIDE.md
%{_datadir}/fast-syntax-highlighting/fast-highlight
%{_datadir}/fast-syntax-highlighting/-fast-make-targets
%{_datadir}/fast-syntax-highlighting/fast-read-ini-file
%{_datadir}/fast-syntax-highlighting/-fast-run-command
%{_datadir}/fast-syntax-highlighting/-fast-run-git-command
%{_datadir}/fast-syntax-highlighting/fast-string-highlight
%{_datadir}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
%{_datadir}/fast-syntax-highlighting/fast-theme
%{_datadir}/fast-syntax-highlighting/-fast-zts-read-all
%{_datadir}/fast-syntax-highlighting/:chroma/-alias.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-autoload.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-autorandr.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-awk.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-docker.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-example.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-fast-theme.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-fpath_peq.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-git.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-grep.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-hub.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-ionice.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-lab.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-make.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-nice.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-nmcli.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-node.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-ogit.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-perl.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-precommand.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-printf.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-ruby.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-scp.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-sh.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-source.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-ssh.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-subcommand.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-subversion.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-vim.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-whatis.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-which.ch
%{_datadir}/fast-syntax-highlighting/:chroma/-zplugin.ch
%{_datadir}/fast-syntax-highlighting/:chroma/main-chroma.ch
%{_datadir}/fast-syntax-highlighting/themes/clean.ini
%{_datadir}/fast-syntax-highlighting/themes/default.ini
%{_datadir}/fast-syntax-highlighting/themes/forest.ini
%{_datadir}/fast-syntax-highlighting/themes/free.ini
%{_datadir}/fast-syntax-highlighting/themes/q-jmnemonic.ini
%{_datadir}/fast-syntax-highlighting/themes/safari.ini
%{_datadir}/fast-syntax-highlighting/themes/spa.ini
%{_datadir}/fast-syntax-highlighting/themes/sv-orple.ini
%{_datadir}/fast-syntax-highlighting/themes/sv-plant.ini
%{_datadir}/fast-syntax-highlighting/themes/zdharma.ini

%changelog
*  Mon Dec 2 2019 Sebastian Gniazdowski <sgniazdowski@gmail.com>
   Add highlighting of the `add' git subcommand.
