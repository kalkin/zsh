if (( $+commands[git-issue] )); then
    alias gi='git issue'
    function gil() {
        git issue list -l '%i'$'\t''%T'$'\t''%D' -o '%c'|column -t -s$'\t'
    }
fi
