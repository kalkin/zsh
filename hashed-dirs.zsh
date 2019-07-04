function zaw-src-dirs() {
    title="dir stack & hashed dirs"
    tmp=$(hash -dL|cut -d" " -f3-)
    IFS=$'\n' candidates=($(echo "$tmp"|cut -d"=" -f2-))
    IFS=$'\n' cand_descriptions=($(echo "$tmp"|cut -d"=" -f1|sed -e"s/^/~/g"))
    tmp=$(dirs -v|sed -e"s/\s\+/ /g"|tail -n +2|head)
    IFS=$'\n' candidates=($(echo "$tmp"|cut -d" " -f2-) $candidates)
    IFS=$'\n' cand_descriptions=($(echo "$tmp") $cand_descriptions)
    tmp=$(dirs -v|sed -e"s/\s\+/ /g"|tail -n +12)
    IFS=$'\n' candidates=($candidates $(echo "$tmp"|cut -d" " -f2-) )
    IFS=$'\n' cand_descriptions=($cand_descriptions $(echo "$tmp"))
    actions=(zaw-src-cd zaw-callback-append-to-buffer)
    act_descriptions=("cd" "insert")
    if (( $+functions[zaw-bookmark-add] )); then
        # zaw-src-bookmark is available
        actions+="zaw-bookmark-add"
        act_descriptions+="bookmark this directory"
    fi
    options=(-t "$title")
}

function zaw-src-cd() {
    BUFFER="cd $1"
    zle accept-line
}
zaw-register-src -n "dirs" zaw-src-dirs
