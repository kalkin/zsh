# Last edit on 2008-02-25 
# vim:foldmarker={{{,}}} tw=80
# {{{
# Filename       : ~/.zshrc
# Purpose        : setup file for the shell 'zsh'
# Author         : Kalkin Sam <kalkin-@web.de>
# Homepage       : http://blog.blase16.de/
#
# Structure of this file:
#  Lines starting with '#' are comments. 
#
# About this file:
#   The whole configuration is outsourced (no not to india :). This file only
#   sources the the files in the .zsh directory.
#
#  Important manpages:
#  ,----[ Overview (Zsh 4.3.4) ]
#  | zsh                  (1)  - the Z shell
#  | zsh-lovers           (1)  - tips, tricks and examples for the Z shell
#  | zshall               (1)  - the Z shell meta-man page Only for hardliner :)
#  | zshbuiltins          (1)  - zsh built-in commands
#  | zshcalsys            (1)  - zsh calendar system
#  | zshcompctl           (1)  - zsh programmable completion
#  | zshcompsys           (1)  - zsh completion system
#  | zshcompwid           (1)  - zsh completion widgets
#  | zshcontrib           (1)  - user contributions to zsh
#  | zshexpn              (1)  - zsh expansion and substitution
#  | zshmisc              (1)  - everything and then some
#  | zshmodules           (1)  - zsh loadable modules
#  | zshoptions           (1)  - zsh options
#  | zshparam             (1)  - zsh parameters
#  | zshroadmap           (1)  - informal introduction to the zsh manual
#  | zshtcpsys            (1)  - zsh tcp system
#  | zshzftpsys           (1)  - zftp function front-end
#  | zshzle               (1)  - zsh command line editor
#  `----
#
# Zsh start up sequence:
#  1) /etc/zshenv   - Always run for every zsh.   (login + interactive + other)
#  2)   ~/.zshenv   - Usually run for every zsh.  (login + interactive + other)
#  3) /etc/zprofile - Run for login shells.       (login)
#  4)   ~/.zprofile - Run for login shells.       (login)
#  5) /etc/zshrc    - Run for interactive shells. (login + interactive)
#  6)   ~/.zshrc    - Run for interactive shells. (login + interactive)
#  7) /etc/zlogin   - Run for login shells.       (login)
#  8)   ~/.zlogin   - Run for login shells.       (login)
#
# This file is heavily based on Christian `strcat` Schneider's zsh config,
# special thanks to him at this point.
#
# }}}

# Test and than source the options
function source_file {
    f="$HOME/.zsh/$1"
    if [ -f ${f} ]; then
    	source "$f"
    else
        echo "Warning: $f is unavailable" 
    fi
}

source_file zshmodules      # see also `man zshmodules`
source_file zshoptions      # see also `man zshoptions`
source_file zshparam        # see also `man zshparam`
source_file zshfunctions
source_file zshexports
source_file zshaliases
source_file qubes-builder.zsh
source_file zshcompl        # see also `man zshcontrib`
source_file zshprompt
source_file zshhooks
source_file zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source_file zaw/zaw.zsh
source_file zsh-autosuggestions/zsh-autosuggestions.zsh
source_file zshbindings
autoload -Uz zmv            # Smarter mv(1) zmv '(*).lis' '$1.txt'
