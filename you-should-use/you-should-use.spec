# you-should-use.spec.  Generated from you-should-use.spec.in by configure.
Name:           you-should-use
Version:        1.7.3
Release:        1%{?dist}
Summary:        ZSH plugin that reminds you to use existing aliases for commands you just typed
License:        GPLv3

BuildArch:      noarch
Requires:       zsh

%description
Simple zsh plugin that reminds you that you should use one of your
existing aliases for a command you just typed.

%global debug_package %{nil}
%define _builddir %(pwd)
%define _sourcedir %(pwd)

%prep
%autosetup -T -D -n .

%build
autoreconf -i
%configure
%make_build

%check
%{_rpmconfigdir}/check-rpaths

%install
%make_install

%files
%{_docdir}/you-should-use/CHANGELOG.md
%{_docdir}/you-should-use/LICENSE
%{_docdir}/you-should-use/README.rst
%{_datadir}/you-should-use/you-should-use.plugin.zsh

