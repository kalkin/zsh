case $OSTYPE in
    linux*)
        alias ls='ls --color=auto'
        ;;
    openbsd*)
        (( $+commands[colorls] )) && alias ls='colorls -G'
        ;;
    darwin*)
        export CLICOLOR=1
        ;;
    *bsd*)
        alias ls='ls -G'
        ;;
esac

alias ll='ls -lh'
alias la='ls -Alh'
alias lad='ls -d -- .*(/)'  # only show dot-direcotories
alias laf='ls -d -- .*(^/)' # only show dot-files
alias lsd='ls -ld -- ^(\.)*(/)'   # show all directories
alias lsf='ls -d -- *(^/)'  # only show files
alias lse='ls -d -- *(/^F)' # only show empty dirs

