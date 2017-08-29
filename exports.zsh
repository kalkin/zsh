# Last edit on 2014-05-16
# This file is a part of my zsh configuration. It's sourced from the .zshrc
# file. It contains the exported shell variables

# (( ${+*} )) = if variable is set don't set it anymore
(( ${+OS} )) || export OS="${OSTYPE%%[0-9.]*}"  

export DISPLAY=:0.0
export MANPATH="$XDG_CONFIG_HOME/man:$(manpath)"
export MANWIDH=80

# I know vi is part of POSIX but some destris i.e Gentoo doesn't have vi in
# standart destribution
if (( $+aliases[vim] )) ; then
    export EDITOR="$aliases[vim]"
    export VISUAL="$aliases[vim]"
fi

export MAIL=mail@kalkin.de
export PGPPATH=$HOME/.gnupg

export LANG="en_US.utf8"
export LC_TIME="de_DE.utf8"
export LC_MESSAGES="en_US.utf8"
export LC_ALL=""
export PAGER='less -R';

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

# LEES COLORS

export LESS_TERMCAP_so=$'\E[0;30;43m'
export LESS_TERMCAP_se=$'\E[0m'

export BROWSER=firefox

# sanitize directory hashes
hash -dL|grep "\=/$"|cut -d" " -f3|cut -d"=" -f1|while read n; do hash -d "$n="; done

export GIT_ALLOW_PROTOCOL=file:git:http:https:ssh:qubes
export QUBES_GPG_DOMAIN=gpg

SSH_VAULT_VM="ssh"

if [ "$SSH_VAULT_VM" != "" ]; then
	export SSH_AUTH_SOCK=~user/.SSH_AGENT_$SSH_VAULT_VM
fi