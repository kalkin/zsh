function zaw-src-zshrc() {
    title="Hashed dirs"
setopt EXTENDED_GLOB    # Allow to use '#', '~' and '^' in file name generation
    tmp=$(hash -dL|cut -d" " -f3-)
    candidates=(${HOME}/.zsh/(z*|*.zsh)(.om))
    cand_descriptions=()
    for c in $candidates; do
       cand_descriptions+=$(basename $c) 
    done
    actions=(zaw-src-zshrc-open-in-editor zaw-src-zshrc-source zaw-callback-append-to-buffer)
    act_descriptions=("edit" "source" "insert")
    options=(-t "$title")
}

zaw-src-zshrc-open-in-editor() {
    BUFFER="$EDITOR $1"
    zle accept-line
}

zaw-src-zshrc-source() {
    BUFFER="source $1"
    zle accept-line
}

zaw-register-src -n zsh-config zaw-src-zshrc
