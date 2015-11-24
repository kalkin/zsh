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
if [ -f ~/.zsh/zshoptions ]; then
    source ~/.zsh/zshoptions
else
   print -Pn "Warning: ~/.zsh/zshoptions is unavailable" 
fi

# Test and than source the exported variables
if [ -f ~/.zsh/zshexports ]; then
    source ~/.zsh/zshexports
else
   print -Pn "Warning: ~/.zsh/zshexport is unavailable" 
fi

# Test and than source the aliases
if [ -f ~/.zsh/zshaliases ]; then
    source ~/.zsh/zshaliases
else
    print -Pn "Warning: ~/.zsh/zshalias is unavailable" 
fi

# Test and than source the bindings
if [ -f ~/.zsh/zshbindings ]; then
    source ~/.zsh/zshbindings
else
    print -Pn "Warning: ~/.zsh/zshbindings is unavailable" 
fi

# Test and than source the functions
if [ -f ~/.zsh/zshfunctions ]; then
    source ~/.zsh/zshfunctions
else
    print -Pn "Warning: ~/.zsh/zshfunctions is unavailable" 
fi

# Test and than source the zsh completitionws
if [ -f ~/.zsh/zshcompl ]; then
    source ~/.zsh/zshcompl
else
   print -Pn "Warning: ~/.zsh/zshcompl is unavailable" 
fi

# Test and than source the prompt
if [ -f ~/.zsh/zshprompt ]; then
    source ~/.zsh/zshprompt
else
    print -Pn "Warning: ~/.zsh/zshprompt is unavailable" 
fi



# Test and than source the prompt
if [ -f ~/.zsh/zshhooks ]; then
    source ~/.zsh/zshhooks
else
    print -Pn "Warning: ~/.zsh/zshhooks is unavailable" 
fi

if [ -f ~/.zsh/zshlocal ]; then
    source ~/.zsh/zshlocal
fi

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
