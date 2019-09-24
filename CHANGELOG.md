# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

### Unreleased - 2018-09-15

### Added

- Bindings add support for st terminal

### Changed

- gitignore(5) files to contain all automake(1) related files
- LS_COLORS to be compatible with solarized st(1)
- PAGER search color is usable with my st(1) colorscheme

### Removed

- committed autotools files
- Makefile from autotools enabled projects

## [2.0.0] - 2018-07-17

### Added
- Mapage zsh-bkg(1)
- CHANGELOG.md — this file

### Changed

- Use Automake to to allow global installation
- Split up the config in multiple units
- Updated README.md to contain current installation methods

### Removed

- Moved custom aliases to :xdg-conf-home
- F2 binding to zaw-zsh-config