if [ -d /etc/qubes ]; then
    export QUBES_OS=1
    export SSH_VAULT_VM="ssh"
    export QUBES_GPG_DOMAIN=gpg

    GIT_ALLOW_PROTOCOL=$GIT_ALLOW_PROTOCOL\:qubes

    if [ "$SSH_VAULT_VM" != "" ]; then
        export SSH_AUTH_SOCK=~$USER/.SSH_AGENT_$SSH_VAULT_VM
    fi
fi
