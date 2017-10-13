if [ -d ~/Projects/ ]; then
    hash -d pj=~/Projects
    for d in ~pj/*; do
        name=$(basename "$d")
        hash -d "$name"="$d"
    done
fi
