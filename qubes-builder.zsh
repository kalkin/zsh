if [ -d ~/qb ]; then
    hash -d qb=~/qb
    hash -d src=~/qb/qubes-src
    for d in ~/qb/qubes-src/*; do
        name=$(basename "$d")
        hash -d "$name"="$d"
    done
    alias -g MGMT=~src/mgmt-\*
fi
