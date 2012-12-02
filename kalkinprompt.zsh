
prompt_kalkin_setup() {
    autoload -Uz vcs_info
    zstyle ':vcs_info:*' disable bzr cdv fossil mtn p4 svk tla git-p4
    zstyle ':vcs_info:*' get-revision true
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:git:*' stagedstr 'Ⓐ '
    zstyle ':vcs_info:(git|hg):*' unstagedstr 'Ⓜ '
    zstyle ':vcs_info:*' formats '%b@%i-%c%u'


    add-zsh-hook precmd prompt_kalkin_precmd
}

prompt_construct_second_line_left(){
    local user_machine_context    

    # only show the username if it's not kalkin
    if [[ "$USERNAME" != "kalkin" ]]; then
        user_machine_context="%n@%m:"
    else 
        user_machine_context="%m:"
    fi
    second_line_left=$user_machine_context
    second_line_left+="%(1v.%F{yellow}↳%1v%f.)" # show git info if needed
    second_line_left+="%0(#|%F{red}☢%f|)" # show ☢ if UID == 0
    second_line_left+="%1(j|%F{green}⚙%f|)" # show ⚙ if there're jobs in background
    second_line_left+="%0(?||%F{yellow}✘%f)" # show ✘ if last exit != 0
    second_line_left+="> "
}

prompt_vcs_info(){
  psvar=()
  vcs_info
  [[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
}

prompt_kalkin_precmd(){
    prompt_vcs_info
    prompt_construct_second_line_left
    PS1=$second_line_left
}

#
#precmd() {
# psvar=()
# vcs_info
# [[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
#}
#
#PS1="%m%(1v.%F{green}%1v%f.)%# "


prompt_kalkin_setup
