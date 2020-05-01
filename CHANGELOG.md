# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [2.4.2] - 2020-05-01

### Fixed

- build: fix by removing duplicate fast__DATA file
- build: fix deploying units/ls-setup.zsh
- gil shortcut
- git-issue aliases & functions
- ls aliases

## [2.4.0] - 2020-04-14

### Added

- Add alias ’absorb’ for git-absorb(1)
- aliases for git-issue(1)
- pregenerate LS_COLORS value

### Fixed

- colorized ls output depending on $OSTYPE
- escape argument passed to BKG_PACKAGE_INFO
- Installation guid in the README.md
- ls color support on BSD
- only use dircolors if available

### Removed

- be aliases because :be was archived

## [2.3.0] - 2020-03-29

### Added

- alias for `cal(1)` to always start on Monday
- `BKG_PACKAGE_INFO` macro
- `<C-b>` zaw-git-recent-branches binding
- pop alias for git stash pop --index
- support for building RPM packages
- support for building with qubes-builder
- support for Gentoo Portage
- support for qubes-builder
- make dist target add missing `fast-*` files
- make dist target add missing units & functions dirs
- make dist target add you-should-use.plugin.zsh

### Changed

- stash alias → ”git stash push”

### Fixed

- include site-functions directory in zshenv/-rc
- install-data-hook use `$(DESTDIR)`
- `LS_COLORS` for archives
- `LS_COLORS` for binary files like PDF, djvu…
- `LS_COLORS` for JavaScript files
- make dist target
- make man/zsh-bkg.1 target
- site-contrib/monorepo skip non directories
- st(1) keybdings
- typo in README.md

### Removed

- un-/install hooks

## [2.0.0] - 2018-07-17

### Added

- Manpage zsh-bkg(1)
- CHANGELOG.md — this file

### Changed

- Use Automake to to allow global installation
- Split up the config in multiple units
- Updated README.md to contain current installation methods

### Removed

- Moved custom aliases to :xdg-conf-home
- F2 binding to zaw-zsh-config
