# This file is a part of my zsh configuration. It's sourced from the .zshrc
# file. It contains my key bindings

bindkey -v  #vi keybindings

typeset -g -A key

key[F1]='^[OP'
key[F2]='^[OQ'
key[F3]='^[OR'
key[F4]='^[OS'
key[F5]='^[[15~'
key[F6]='^[[17~'
key[F7]='^[[18~'
key[F8]='^[[19~'
key[F9]='^[[20~'
key[F10]='^[[21~'
key[F11]='^[[23~'
key[F12]='^[[24~'
key[Backspace]='^?'
key[Insert]='^[[2~'
key[PageUp]='^[[5~'
key[Delete]='^[[3~'
key[PageDown]='^[[6~'

if [[ $TERM == screen* ]]; then
    key[Home]='^[[1~'
    key[End]='^[[4~'
    key[Up]='^[OA'
    key[Left]='^[OD'
    key[Down]='^[OB'
    key[Right]='^[OC'
elif [[ $TERM == xterm* ]]; then
    key[Home]='^[[H'
    key[End]='^[[F'
    key[Up]='^[[A'
    key[Left]='^[[D'
    key[Down]='^[[B'
    key[Right]='^[[C'
fi

bindkey $key[Home]    beginning-of-line
bindkey $key[End]     end-of-line
bindkey $key[Insert]  overwrite-mode
bindkey $key[PageUp]  history-beginning-search-backward-end
bindkey $key[PageDown]  history-beginning-search-forward-end
bindkey $key[Delete]  delete-char
bindkey $key[Up]      up-line-or-history
bindkey $key[Down]    down-line-or-history
bindkey $key[Left]    backward-char
bindkey $key[Right]   forward-char

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
bindkey "^u" insert-last-word
bindkey "^W" backward-delete-word

zle -N run-with-sudo
bindkey '^N' run-with-sudo

# press esc-e for editing command line in $EDITOR or $VISUAL
if  zle -N edit-command-line ; then
    autoload -Uz edit-command-line
    bindkey '^e' edit-command-line
fi

# press "ctrl-e d" to insert the actual date in the form yyyy-mm-dd
_bkdate() { BUFFER="$BUFFER$(today)"; CURSOR=$#BUFFER; }
zle -N _bkdate
bindkey '^t' _bkdate

#Execute command and push it in to background
bindkey -s '^z' " &\r"

# Auto quote pasted urls
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

autoload -Uz run-help
bindkey $key[F1] run-help
bindkey -M vicmd "K" run-help

autoload -U magic-space
bindkey ' ' magic-space  # also do history expansion on space

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=13'
bindkey '^f' vi-forward-blank-word
bindkey '^g' end-of-line

zstyle ':completion:*' completer _oldlist _complete

bindkey "^X" zaw
bindkey $key[F12] zaw-process
bindkey "^ " zaw-dirs
bindkey "^r" zaw-history
bindkey "^o"  zaw-command-output
bindkey "^P" zaw-applications

bindkey '\e' vi-cmd-mode
bindkey 'jj' vi-cmd-mode
