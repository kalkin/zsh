# zsh-autosuggestions.spec.  Generated from zsh-autosuggestions.spec.in by configure.
Name:           zsh-autosuggestions
Version:        0.6.3
Release:        1%{?dist}
Summary:        Fish-like autosuggestions for zsh
License:        MIT

Requires:       zsh

%description
As you type commands, you will see a completion offered after the cursor in a
muted gray color.

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
%{_docdir}/zsh-autosuggestions/CHANGELOG.md
%{_docdir}/zsh-autosuggestions/DESCRIPTION
%{_docdir}/zsh-autosuggestions/INSTALL.md
%{_docdir}/zsh-autosuggestions/LICENSE
%{_docdir}/zsh-autosuggestions/README.md
%{_docdir}/zsh-autosuggestions/URL
%{_docdir}/zsh-autosuggestions/VERSION

%{_datadir}/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
%{_datadir}/zsh-autosuggestions/zsh-autosuggestions.zsh

%{_datadir}/zsh-autosuggestions/src/async.zsh
%{_datadir}/zsh-autosuggestions/src/bind.zsh
%{_datadir}/zsh-autosuggestions/src/config.zsh
%{_datadir}/zsh-autosuggestions/src/fetch.zsh
%{_datadir}/zsh-autosuggestions/src/highlight.zsh
%{_datadir}/zsh-autosuggestions/src/start.zsh
%{_datadir}/zsh-autosuggestions/src/util.zsh
%{_datadir}/zsh-autosuggestions/src/widgets.zsh

%{_datadir}/zsh-autosuggestions/src/strategies/completion.zsh
%{_datadir}/zsh-autosuggestions/src/strategies/history.zsh
%{_datadir}/zsh-autosuggestions/src/strategies/match_prev_cmd.zsh
