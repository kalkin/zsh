autoload -U colors          # Enable colors
colors

# Test and than source the options
function source_file {
    f="$HOME/.config/zsh/$1"
    if [ -f ${f} ]; then
    	source "$f"
    else
        echo "Warning: $f is unavailable" 
    fi
}

source_file init_path.zsh
source_file modules.zsh      # see also `man zshmodules`
source_file options.zsh      # see also `man zshoptions`
source_file param.zsh        # see also `man zshparam`
source_file functions.zsh
source_file aliases.zsh
source_file exports.zsh
source_file qubes-builder.zsh
source_file compl.zsh        # see also `man zshcontrib`
source_file hooks.zsh
source_file zaw/zaw.zsh
source_file hashed-dirs.zsh
source_file zaw-zshrc.zsh
source_file zsh-autosuggestions/zsh-autosuggestions.zsh
source_file zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source_file bindings.zsh

for f in "$HOME"/.config/zsh/units/*; do
    source "$f"
done

autoload -Uz zmv            # Smarter mv(1) zmv '(*).lis' '$1.txt'
[ -f "$HOME/.zshafter" ] && source "$HOME/.zshafter"

precmd () {print -Pn "\e]0;%n@%m: %~\a"}
