eval $(dircolors -b /usr/share/zsh/LS_COLORS)

alias ls='ls --color=auto' # Linux specific aliases
alias ll='ls -lh'
alias la='ls -Alh'
alias lad='ls -d -- .*(/)'  # only show dot-direcotories
alias laf='ls -d -- .*(^/)' # only show dot-files
alias lsd='ls -ld -- ^(\.)*(/)'   # show all directories
alias lsf='ls -d -- *(^/)'  # only show files
alias lse='ls -d -- *(/^F)' # only show empty dirs

