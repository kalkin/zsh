# Last edit on 2014-11-27
# This file is a part of my zsh configuration. It's sourced from the .zshrc
# file. It contains my aliases

# Just for fun :)
alias top10='print -l $$${(o)history%% *} | uniq -c | sort -nr | head -n 10'

alias h='history'
alias hs='history 1|grep'
alias today="date +\"%F\""
alias yesterday="date -d yesterday +%F"
alias fspc='df -h .'

alias grep='grep --color=auto'

alias tree="tree -FAC"

alias myip='curl -s http://www.myip.ch/ | grep -o "[[:digit:]].*[[:digit:]]"'

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

alias htod="fc -inl -1000|grep `today`|strip-ansi-colors|grep TIME_REGEX"
alias hyes="fc -inl -2000|grep `yesterday`|strip-ansi-colors|grep TIME_REGEX"
alias iotop="sudo iotop -o"
