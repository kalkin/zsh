# Set EDITOR if not set to nvim, fall back to vim, or vi
if (( $+commands[nvim] )) ; then
    alias vim=nvim
    alias vi=vim
    export EDITOR=nvim
    export VISUAL=nvim
elif (( $+commands[vim] )) ; then
    alias vi=vim
    export EDITOR=vim
    export VISUAL=vim
elif (( $+commands[vim] )) ; then
    export EDITOR=vi
    export VISUAL=vi

fi

if (( $+aliases[vim] )) ; then
    alias view="$aliases[vim] -R"
else
    alias view="vim -R"
fi

export SUDO_EDITOR=$EDITOR
