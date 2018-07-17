# == History
# Command line history options

setopt APPEND_HISTORY       # One history for all zsh session of same user
setopt EXTENDED_HISTORY     # Save command start time & elapsed time
# setopt HIST_ALLOW_CLOBBER   # Add '|' to optut redictions in history
setopt HIST_FIND_NO_DUPS    # Ommit dupplicate history entries during search
setopt HIST_IGNORE_SPACE    # Don't save commands prefixed with a space ' '
setopt HIST_LEX_WORDS       # More accurate delimeted words. Performance?
setopt HIST_REDUCE_BLANKS   # Remove trailing space before adding to history
setopt HIST_VERIFY          # Show history expansion before executing

if is-at-least 5.1.1 $ZSH_VERSION; then
    setopt INC_APPEND_HISTORY_TIME   # Add command to history file, as soon as it finishes. 
fi

setopt SHARE_HISTORY     # Don't use SHARE_HISTORY it breaks INC_APPEND_HISTORY_TIME

autoload -U history-search-end
# History completion on pgup and pgdown
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

HISTDIR="$HOME/.cache/zsh"
[ ! -d "$HISTDIR" ] && mkdir -p "$HISTDIR"
typeset -g HISTFILE="$HISTDIR/histfile"	# The history file to be saved to
typeset -g HISTSIZE=100000		# if we ever get in to performance issues we can tune it down
typeset -g SAVEHIST=100000		# if we ever get in to performance issues we can tune it down
