# zaw.spec.  Generated from zaw.spec.in by configure.
Name:           zaw
Version:        1.1.0
Release:        2%{?dist}
Summary:        zsh anything.el-like widget
License:        GPLv3

Requires:       zsh

%description
zsh anything.el-like widget

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
%{_docdir}/zaw/LICENSE
%{_docdir}/zaw/README.rst

%{_datadir}/zaw/zaw-launcher.zsh
%{_datadir}/zaw/zaw.plugin.zsh
%{_datadir}/zaw/zaw.zsh

%{_datadir}/zaw/functions/fill-vars-or-accept
%{_datadir}/zaw/functions/filter-select

%{_datadir}/zaw/sources/aliases.zsh
%{_datadir}/zaw/sources/applications.zsh
%{_datadir}/zaw/sources/bookmark.zsh
%{_datadir}/zaw/sources/cdr.zsh
%{_datadir}/zaw/sources/command-output.zsh
%{_datadir}/zaw/sources/commands.zsh
%{_datadir}/zaw/sources/fasd.zsh
%{_datadir}/zaw/sources/functions.zsh
%{_datadir}/zaw/sources/git-branches.zsh
%{_datadir}/zaw/sources/git-files.zsh
%{_datadir}/zaw/sources/git-log.zsh
%{_datadir}/zaw/sources/git-recent-branches.zsh
%{_datadir}/zaw/sources/git-reflog.zsh
%{_datadir}/zaw/sources/git-status.zsh
%{_datadir}/zaw/sources/history.zsh
%{_datadir}/zaw/sources/locate.zsh
%{_datadir}/zaw/sources/open-file.zsh
%{_datadir}/zaw/sources/perldoc.zsh
%{_datadir}/zaw/sources/process.zsh
%{_datadir}/zaw/sources/programs.zsh
%{_datadir}/zaw/sources/screens.zsh
%{_datadir}/zaw/sources/searcher.zsh
%{_datadir}/zaw/sources/ssh-hosts.zsh
%{_datadir}/zaw/sources/tmux.zsh
%{_datadir}/zaw/sources/widgets.zsh
