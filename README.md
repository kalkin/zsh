# ZSH-BKG

This is good and sane zsh config.

## Installation

There're multiple ways to install this configuration, but first you have to
clone this repository:

- `git clone https://github.com/kalkin/zsh.git .zsh --recursive`
- `ln -s ~/.zsh/zshrc .zshrc`


### 1. According to XDG Base Specification

This will install all the config files in to `$XDG_DATA_HOME/zsh`. A line
sourcing the main file will be added to the end of your `.zshrc`

- `./configure --enable-xdg --with-plugins`
- `make install`

### 2. Globally for all users

This will install all the config files in to `$datarootdir/zsh`. A line
sourcing the main file will be added to the end of your `.zshrc`

- `git clone https://github.com/kalkin/zsh.git zsh-config`
- `cd zsh-config`
- `./configure --prefix=/usr --with-plugins`
- `make install`
- `sudo make install`

### Plugins

This config uses on `fast-syntax-higlighting`, `you-should-use`, `zaw` &
`zsh-autosuggestions`. If you have not installed this packages from your package
manager (you probably have not), add `--with-plugins` switch to `./configure`.

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

## Zsh start up sequence

|\# | File            | Comment                       | Shell Type                    |
| - | --------------- | ----------------------------- | ----------------------------- |
| 1 | `/etc/zshenv`   | - Always run for every zsh    | (login + interactive + other) |
| 2 | `~/.zshenv`     | - Usually run for every zsh   | (login + interactive + other) |
| 3 | `/etc/zprofile` | - Run for login shells        | (login)                       |
| 4 | `~/.zprofile`   | - Run for login shells        | (login)                       |
| 5 | `/etc/zshrc`    | - Run for interactive shells. | (login + interactive)         |
| 6 | `~/.zshrc`      | - Run for interactive shells. | (login + interactive)         |
| 7 | `/etc/zlogin`   | - Run for login shells        | (login)                       |
| 8 | `~/.zlogin`     | - Run for login shells        | (login)                       |

## Thanks

This config started as a fork of Christian `strcat` Schneider's zsh config.
Special thanks to him at this point.

