# vim: et sta ft=zsh ts=4 sw=4 tw=80 fenc=utf8 fdm=marker fmr={{{,}}} 
# Last edit on 2016-08-19 

# = Zsh Options
#
# See `man 1 zshoptions` for more documentation

# == Changing Directory
# Options defininig behaviour of the `cd` command
# {{{
setopt AUTO_CD      # Change directory without cd
setopt AUTO_PUSHD   # cd pushes the old directory onto a directory stack. 
setopt CDABLE_VARS  # When doing cd src, if src does not exists try cd ~src
setopt PUSHD_MINUS  # reverse the numbering of the dir stack
setopt PUSHD_IGNORE_DUPS  # Ignore duplicate dir paths
#}}}

# == Completion
# Completion behaviour, i.e. when used with <Tab>
# {{{

setopt AUTO_LIST        # Show list choices on ambiguous completion
setopt AUTO_MENU        # Show menu completion after second <Tab> press
setopt AUTO_PARAM_KEYS  # Smart removale of uneeded space, comma & ect… see man
setopt AUTO_PARAM_SLASH # Add / if completed parameter value is a directory
setopt HASH_LIST_ALL    # Minimize false positive completions through hashing
setopt LIST_AMBIGUOUS   # If completion is not possible list alternative completions
setopt LIST_PACKED      # Make completion use less lines, but also no columns
# setopt LIST_ROWS_FIRST  # Sort completions horizontally instead of vertically
setopt LIST_TYPES       # During completion of files indicate types with marks
# }}}

# == Expansion and Globbing
# {{{
setopt BAD_PATTERN      # Print error message if file pattern is badly formed

# expands single letters and ranges of letters, i. e.:
#  $ print 1{abw-z}2
#  $ 1a2 1b2 1w2 1x2 1y2 1z2
setopt BRACE_CCL

setopt EQUALS           # Perform filename expansion after =
setopt EXTENDED_GLOB    # Allow to use '#', '~' and '^' in file name generation
# setopt FORCE_FLOAT      # Command line arithmetic uses decimal point if apropriate 
setopt GLOB             # Perform filename generation (globbing)
setopt GLOB_DOTS        # Don't require leading '.' in afilename for matching explicitly
setopt MARK_DIRS        # When doing file name generation append '/' to all directory names
setopt NOMATCH          # If pattern for filename generation has no matches print error
# setopt WARN_CREATE_GLOBAL   # Print a warning when global parameter is created in function
# }}}

# == History
# Command line history options
# {{{
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
# }}}

# == Input/Ouput
# Redirections and syntax options
# {{{
setopt NO_CLOBBER       # Do cat foo >| bar to overwrite existing bar
setopt CORRECT_ALL     # Correct the spelling of all arguments in line
setopt INTERACTIVE_COMMENTS     # Allow comments with # even in a "normal" shell
setopt MAIL_WARNING     # Print a warning if the mail file changed  ???
setopt NO_RM_STAR_SILENT # Warn before doing rm * or rm foo/*
setopt SHORT_LOOPS     # Allow the short forms of for, repeat, select, if & function
# }}}

# == Job Control
# Background & Suspended Jobs options
# {{{
setopt AUTO_CONTINUE    # Keep jobs running after using disown on them
setopt NO_AUTO_RESUME   # Do not run in background jobs suspended with Ctrl + Z
setopt CHECK_JOBS       # On first exit, remind users of running/suspended jobs
setopt LONG_LIST_JOBS   # Effect??
# setopt NO_NOTIFY      # Print status report of background jobs just before prompt
# }}}

# == Prompting
# setopt TRANSIENT_RPROMPT # Remove any right prompt from display when accepting
# a cmd line


# == Scripts and Functions
# {{{
if is-at-least 5.1.1 $ZSH_VERSION; then
    setopt LOCAL_LOOPS  # A break/continue doesn't propagate to outer loops
fi
setopt MULTIOS      # Enable awesome multiple redirections also see zshmisc(1)
# }}}


# == Shell Emulation
if is-at-least 5.1.1 $ZSH_VERSION; then
    setopt APPEND_CREATE    # Allow to use '>>' instead of '>>|' for existing files
fi

# == Shell State

setopt BEEP     # BEeeep! …on error
