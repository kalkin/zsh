function prepend_to_path(){
    [ -d "$1" ] && PATH="$1:$PATH"
}

prepend_to_path /usr/local/bin
prepend_to_path /usr/local/sbin
prepend_to_path /opt/bin
prepend_to_path $HOME/.local/bin
prepend_to_path $HOME/.local/sbin
prepend_to_path $HOME/bin
prepend_to_path $XDG_CONFIG_HOME/bin
prepend_to_path /opt/rakudo/bin
prepend_to_path $HOME/.perl6/bin
path=($^path(/FN))  # deduplicate paths
