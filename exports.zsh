# Last edit on 2014-05-16
# This file is a part of my zsh configuration. It's sourced from the .zshrc
# file. It contains the exported shell variables

# (( ${+*} )) = if variable is set don't set it anymore
(( ${+OS} )) || export OS="${OSTYPE%%[0-9.]*}"  

export DISPLAY=:0.0
export MANPATH="$XDG_CONFIG_HOME/man:$(manpath)"
export MANWIDH=80
eval $(dircolors -b $ZDOTDIR/LS_COLORS)

# I know vi is part of POSIX but some destris i.e Gentoo doesn't have vi in
# standart destribution
if (( $+commands[nvim] )) ; then
    export EDITOR=nvim
    export VISUAL=nvim
elif (( $+commands[vim] )) ; then
    export EDITOR=vim
    export VISUAL=vim
fi

export MAIL=mail@kalkin.de
export PGPPATH=$HOME/.gnupg

export LANG="en_US.utf8"
export LC_TIME="de_DE.utf8"
export LC_MESSAGES="en_US.utf8"
export LC_ALL=""
export PAGER='less';
export LESS='-R'

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

export BROWSER=firefox

# sanitize directory hashes
hash -dL|grep "\=/$"|cut -d" " -f3|cut -d"=" -f1|while read n; do hash -d "$n="; done

export GIT_ALLOW_PROTOCOL=file:git:http:https:ssh

if [ -d /etc/qubes ]; then
    export QUBES_OS=1
fi

if [ -n QUBES_OS ]; then
    export SSH_VAULT_VM="ssh"
    export QUBES_GPG_DOMAIN=gpg

    GIT_ALLOW_PROTOCOL=$GIT_ALLOW_PROTOCOL\:qubes

    if [ "$SSH_VAULT_VM" != "" ]; then
        export SSH_AUTH_SOCK=~$USER/.SSH_AGENT_$SSH_VAULT_VM
    fi
fi
