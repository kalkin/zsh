alias rebase="git rebase"
alias add="git add -p" 
alias pull="git pull" 
alias push="git push" 
alias gd="git diff" 
alias stash="git stash"
alias pop="git stash pop"
alias drop="git stash drop"

for line in $(git config --get-regexp 'alias.*' \
            | cut -d'.' -f2- \
            |cut -d" " -f1,2|grep -v "alias");
do
    an_alias=$(echo "$line"|cut -d" " -f1)
    git_cmd=$(echo "$line"|cut -d" " -f2)
    alias "$an_alias"="git $git_cmd"
done


