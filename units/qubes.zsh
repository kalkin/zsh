if [ -d /etc/qubes ]; then
    export QUBES_OS=1
    export SSH_VAULT_VM="ssh"
    export QUBES_GPG_DOMAIN=gpg

    if [ -z $GIT_ALLOW_PROTOCOL ] ; then
        export GIT_ALLOW_PROTOCOL=file:git:http:https:ssh:qubes
    else
        export GIT_ALLOW_PROTOCOL=$GIT_ALLOW_PROTOCOL\:qubes
    fi

    if [ "$SSH_VAULT_VM" != "" ]; then
        export SSH_AUTH_SOCK=~$USER/.SSH_AGENT_$SSH_VAULT_VM
    fi
fi
