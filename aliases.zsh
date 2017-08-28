# Last edit on 2014-11-27
# This file is a part of my zsh configuration. It's sourced from the .zshrc
# file. It contains my aliases

# Just for fun :)
alias top10='print -l $$${(o)history%% *} | uniq -c | sort -nr | head -n 10'

alias psg='ps ax|grep -v grep|grep -i'
alias h='history'
alias hs='history 1|grep'
alias today="date +\"%F\""
alias yesterday="date -d yesterday +%F"
alias fspc='df -h .'

# Linux specific aliases
if [[  $(uname -s)  = 'Linux' ]] then
    alias ls='ls -F --color'
    alias grep='grep --color'
else 
    alias ls='ls -F'
fi

alias ll='ls -lh'
alias la='ls -Alh'
alias lad='ls -d -- .*(/)'  # only show dot-direcotories
alias laf='ls -d -- .*(^/)' # only show dot-files
alias lsd='ls -ld -- ^(\.)*(/)'   # show all directories
alias lsf='ls -d -- *(^/)'  # only show files
alias lse='ls -d -- *(/^F)' # only show empty dirs

if (( $+commands[hub] )) ; then
    alias git=hub
    alias fork="hub fork"
fi

alias ci="git ci" 
alias co="git co" 
alias rebase="git rebase"
alias st="git status -sb" 
alias add="git add -p" 
alias pull="git pull" 
alias purr="git purr" 
alias push="git push" 
alias gd="git diff" 
alias stash="git stash"
alias pop="git stash pop"
alias drop="git stash drop"

alias tree="tree -FAC"

if (( $+commands[nvim] )) ; then
    alias nvim="nvim -p"
    alias vim="$aliases[nvim]"
elif (( $+commands[vimx] )) ; then
    alias vim="vimx -p"
elif (( $+commands[vim] )) ; then
    alias vim="vim -p"
fi

if (( $+aliases[vim] )) ; then
    alias vi="$aliases[vim]"
    alias view="$aliases[vim] -R"
fi

if (( $+commands[links2] )) ; then
    export LINKS_BROWSER="links2"
elif (( $+commands[links] )) ; then
    export LINKS_BROWSER="links"
elif (( $+commands[lynx] )) ; then
    export LINKS_BROWSER="lynx"
fi

alias myip=$LINKS_BROWSER' -dump http://www.myip.ch/ | grep -o "[[:digit:]].*[[:digit:]]"'

# some config shortcuts
alias confighelp='./configure --help=short'
alias configmake='./configure && make'

# Suffix aliases
alias -s pdf=evince
alias -s ps=evince
alias -s {flac,wav,wmv,mpg,avi,mpeg,ogm,m4v,mp4,mkv,ogg}='mpv'
alias -s {jpg,jpeg,xpm,xbm,png,gif}='eog'

if (( $+commands[firefox] )) ; then
    alias -s html=firefox
else 
    alias -s html=$LINKS_BROWSER
fi

if [[ -x `which vim` || -x `which vi` ]]; then
    alias -s tex=vim
    alias -s php=vim
    alias -s java=vim
    alias -s pl=vim
    alias -s py=vim
fi

alias htod="fc -inl -1000|grep `today`|strip-ansi-colors|grep TIME_REGEX"
alias hyes="fc -inl -2000|grep `yesterday`|strip-ansi-colors|grep TIME_REGEX"
alias iotop="sudo iotop -o $@"


# Global alias
alias -g NE='2>|/dev/null'
alias -g NO='&>|/dev/null'

alias -g PG='|$PAGER'

alias -g TIME_REGEX="\"[0-2][0-9]:[0-6][0-9]\""
