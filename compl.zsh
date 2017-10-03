# vim: et sta ft=zsh ts=4 sw=4 tw=80 fenc=utf8 fdm=marker fmr={{{,}}} 
# Last edit on 2016-08-20

autoload -Uz compinit && compinit

# == Fine tuning completions
# Cache completions
zstyle ':comletion:*' use-cache on 
zstyle ':comletion:*' cache-path ~/.zsh/cache
#
# highlight matching part of available completions
zstyle ':completion:*' list-colors

# Fuzzy matching of completions for when you mistype them:
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Completing process IDs with menu selection:
zstyle ':completion:*:processes' command 'ps x -U $USER -o pid,%cpu,cmd'
zstyle ':completion:*:processes-names' command  'ps c -u ${USER} -o command | uniq'

# add colors to completions
# # general completion
# #--------------------------------------------------
zstyle ':completion:::::' completer _complete _approximate
_force_rehash() {
  (( CURRENT == 1 )) && rehash
  return 1    # Because we didn't really complete anything
}
zstyle ':completion:::::' completer _force_rehash _complete _approximate

zstyle ':completion:*:descriptions' format $$$'%{\e[0;31m%}completing %B%d%b%{\e[0m%}'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*' format $'%{\e[0;31m%}completing %B%d%b%{\e[0m%}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'
zstyle ':completion:*:descriptions' format "- %d -"
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' insert-tab false




zstyle ':completion:*:*:vim:*:*files' ignored-patterns '*.precomp'

zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
# If there are more than 5 options, allow selecting from a menu with
# arrows (case insensitive completion!).
zstyle ':completion:*-case' menu select=5

zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true

if [[ -z "$ZSH_CDR_DIR" ]]; then
    ZSH_CDR_DIR=${XDG_CACHE_HOME:-$HOME/.cache}/zsh-cdr
fi
mkdir -p $ZSH_CDR_DIR
autoload -Uz chpwd_recent_dirs cdr
autoload -U add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-file $ZSH_CDR_DIR/recent-dirs
zstyle ':chpwd:*' recent-dirs-max 1000
# fall through to cd
zstyle ':chpwd:*' recent-dirs-default yes


# Help command
# Unlike bash, zsh does not enable a built in help command. To use help in zsh,
# add following to your zshrc:
autoload -Uz run-help
#unalias run-help
#function help() {
    ## helper function to not display hub(1) man page
    #if [ "$1"="git" ]; then
        #man "$@"
    #else
        #run-help "$@"
    #fi
#}
#compdef '_dispatch man man' help

# Make completion (yeah im getting fucking lazy)
compile=(install clean remove uninstall deinstall)
compctl -k compile make

compctl -k ping telnet ncftp host nslookup irssi rlogin ftp weechat-curses 

compctl -g '*.(pdf|ps|PDF|PS)' + -g '*(-/)' evince xpdf
compctl -g '*.(jpg|JPG|jpeg|JPEG|gif|GIF|png|PNG|bmp)' + -g '*(-/)' eog feh gimp
compctl -g "*.html *.htm" + -g "*(-/) .*(-/)" + -H 0 '' w3m lynx links links2 elinks firefox dillo
compctl -g "*.scala" + -g "*(-/) .*(-/)" + -H 0 '' scalac
compctl -g "*.rar *.tar *.bz2 *.gz *.ace *.tgz *.deb *.izs *.tar *.tbz2 *.zip *.Z *.shar" + -g "*(-/) .*(-/)" + -H 0 '' spex

# vim set tw=120
