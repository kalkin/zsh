# Last edit on 2014-05-16
# This file is a part of my zsh configuration. It's sourced from the .zshrc
# file. It contains the exported shell variables

# (( ${+*} )) = if variable is set don't set it anymore
(( ${+OS} )) || export OS="${OSTYPE%%[0-9.]*}"  

export DISPLAY=:0.0
export MANPATH="$XDG_CONFIG_HOME/man:$(manpath)"
export MANWIDH=80

export MAIL=mail@kalkin.de

HELPDIR=
for d in /usr/share/zsh/*; do 
    if [ -d "$d/help" ]; then
        if [ "$HELPDIR" = "" ]; then
            HELPDIR="$d"
        else
            HELPDIR="$HELPDIR:$d"
        fi
    fi
done

(( ${+XDG_DATA_HOME} ))   || export XDG_DATA_HOME=$HOME/.local/share
(( ${+XDG_CONFIG_HOME} )) || export XDG_CONFIG_HOME=$HOME/.config
(( ${+XDG_CACHE_HOME} ))  || export XDG_CACHE_HOME=$HOME/.cache
