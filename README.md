# README

This is my zsh config.

## Installation
- Install with `make install`.
- Uninstall with `make uninstall`.

## Important manpages

| Name        | Section | Description                                     |
|-------------|---------|-------------------------------------------------|
| zshroadmap  | (1)     | informal introduction to the zsh manual         |
| zsh         | (1)     | the Z shell                                     |
| zsh-lovers  | (1)     | tips, tricks and examples (often own package)   |
| zshbuiltins | (1)     | zsh built-in commands                           |
| zshcalsys   | (1)     | zsh calendar system                             |
| zshcompctl  | (1)     | zsh programmable completion                     |
| zshcompsys  | (1)     | zsh completion system                           |
| zshcompwid  | (1)     | zsh completion widgets                          |
| zshcontrib  | (1)     | user contributions to zsh                       |
| zshexpn     | (1)     | zsh expansion and substitution                  |
| zshmisc     | (1)     | everything and then some                        |
| zshmodules  | (1)     | zsh loadable modules                            |
| zshoptions  | (1)     | zsh options                                     |
| zshparam    | (1)     | zsh parameters                                  |
| zshtcpsys   | (1)     | zsh tcp system                                  |
| zshzftpsys  | (1)     | zftp function front-end                         |
| zshzle      | (1)     | zsh command line editor                         |
| zshall      | (1)     | the Z shell meta-man page Only for hardliner :) |

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

<!-- vim: ft=markdown -->
