# README

This is my zsh config.

## Installation

There're multiple ways to install this configuration, but first you have to
clone this repository:

### 1. In $HOME

- `git clone https://github.com/kalkin/zsh.git .zsh`
- `ln -s ~/.zsh/zshrc .zshrc`

### 2. According to XDG Base Specification

This will install all but the `zshrc` config files in to `$XDG_CONFIG_BASE/zsh`.
The `zshrc` will be installed in `$HOME/.zshrc`. You will need to have autotools
for this. ☺

- `git clone https://github.com/kalkin/zsh.git zsh-config --recursive`
- `cd zsh-config`
- `autoconf`
- `./configure --enable-xdg`
- `make install`

### 3. Globally for all users

This will install all but the `zshrc` config files in to `etc/zsh`.
The `zshrc` will be installed in `/etc/zshrc` and will source `/etc/profile.d/`.
You will need to have autotools for this. ☺

- `git clone https://github.com/kalkin/zsh.git zsh-config`
- `cd zsh-config`
- `autoconf`
- `./configure --prefix=`
- `make install`
- `sudo make install`

## Deinstallation

`make uninstall`

## Important manpages

| Name        | Description                                     |
|-------------|-------------------------------------------------|
| zshroadmap  | informal introduction to the zsh manual         |
| zsh         | the Z shell                                     |
| zsh-lovers  | tips, tricks and examples (often own package)   |
| zshbuiltins | zsh built-in commands                           |
| zshcalsys   | zsh calendar system                             |
| zshcompctl  | zsh programmable completion                     |
| zshcompsys  | zsh completion system                           |
| zshcompwid  | zsh completion widgets                          |
| zshcontrib  | user contributions to zsh                       |
| zshexpn     | zsh expansion and substitution                  |
| zshmisc     | everything and then some                        |
| zshmodules  | zsh loadable modules                            |
| zshoptions  | zsh options                                     |
| zshparam    | zsh parameters                                  |
| zshtcpsys   | zsh tcp system                                  |
| zshzftpsys  | zftp function front-end                         |
| zshzle      | zsh command line editor                         |
| zshall      | the Z shell meta-man page Only for hardliner :) |

## Zsh start up sequence:

|\# | File            | Comment                       | Shell Type                    |
| - | --------------- | ----------------------------- | ----------------------------- |
| 1 | `/etc/zshenv`   | - Always run for every zsh.   | (login + interactive + other) |
| 2 | `~/.zshenv`     | - Usually run for every zsh.  | (login + interactive + other) |
| 3 | `/etc/zprofile` | - Run for login shells.       | (login)                       |
| 4 | `~/.zprofile`   | - Run for login shells.       | (login)                       |
| 5 | `/etc/zshrc`    | - Run for interactive shells. | (login + interactive)         |
| 6 | `~/.zshrc`      | - Run for interactive shells. | (login + interactive)         |
| 7 | `/etc/zlogin`   | - Run for login shells.       | (login)                       |
| 8 | `~/.zlogin`     | - Run for login shells.       | (login)                       |


## Thanks
This config started as a fork of Christian `strcat` Schneider's zsh config.
special thanks to him at this point.

<!-- vim: ft=markdown
-->
