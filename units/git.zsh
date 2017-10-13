

if (( $+commands[hub] )) ; then
    alias fork="hub fork"
fi


# INTERNAL: Allow executables in ~/.local/bin/git-* to replace git commands
function _do_git() {
    local exe
    if (( $+commands[hub])); then
        exe=`which hub`
    else
        exe=`which git`
    fi
    if [ $# -ge 1 ]; then
        if [ -f $HOME/.local/bin/git-$1 ]; then
            exe=git-$1
            shift
        fi
    fi
    $exe  $@
}

alias=_do_git
