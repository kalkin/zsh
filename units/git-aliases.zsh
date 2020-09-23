if (( $+commands[hub] )) ; then
    alias fork="hub fork"
fi

alias rebase="git rebase"
alias add="git add -p" 
alias pull="git pull" 
alias push="git push" 
alias gd="git diff" 
alias gdc="git diff --cached" 
alias gdw="git diff --ignore-space-at-eol --ignore-blank-lines -W"
alias stash="git stash push"
alias drop="git stash drop"
alias gs='git switch'

git config --get-regexp 'alias.*'|cut -d'.' -f2-|grep -v "alias"|while read line;
do
    an_alias=$(echo "$line"|cut -d" " -f1)
    git_cmd=$(echo "$line"|cut -d" " -f2-)
    alias "$an_alias"="git $git_cmd"
done

unstage() {
    if [ $# -gt 0 ]; then
        git reset $@
    else
        git reset .
    fi
}
