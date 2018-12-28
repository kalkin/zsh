if [ -d ~/Projects/ ]; then
    hash -d pj=~/Projects
    for d in $(print -rl -- ~pj/*(/)); do
        name=$(basename "$d")
        hash -d "$name"="$d"
    done
fi
