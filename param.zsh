# vim: et sta ft=zsh ts=4 sw=4 tw=80 fenc=utf8 fdm=marker fmr={{{,}}} 
# Last edit on 2016-08-29 
#
typeset -g CORRECT_IGNORE_FILE=".*"	# Useful with CORRECT_ALL option set in zshoptions
typeset -g HISTFILE="$HOME/.local/share/zsh/histfile"	# The history file to be saved to
typeset -g HISTSIZE=100000		# if we ever get in to performance issues we can tune it down
typeset -g LISTMAX=0			# Only ask before displaying if completions would scroll
typeset -g READNULLCMD=less		# Default was more
typeset -g REPORTTIME=15		# Report if commands takes longer than 15 seconds
typeset -g SAVEHIST=100000		# if we ever get in to performance issues we can tune it down
typeset -g watch=(notme) 		# Watch for logins of other users Do we need that?
typeset -g WORDCHARS='*_[]~&!#$%^(){}<>' # Sane defaults

# By defining the below vars with -U we remove all duplicate entries from them
typeset -gU path cdpath manpath fpath


