hash -d Documents=$HOME/Documents
hash -d Downloads=$HOME/Downloads
hash -d Music=$HOME/Music
hash -d Videos=$HOME/Videos

(( ${+XDG_DATA_HOME} ))   || export XDG_DATA_HOME=$HOME/.local/share
(( ${+XDG_CONFIG_HOME} )) || export XDG_CONFIG_HOME=$HOME/.config
(( ${+XDG_CACHE_HOME} ))  || export XDG_CACHE_HOME=$HOME/.cache
