
VCS_BRANCH_ICON='↯'

prompt_kalkin_setup() {
    local prompt_gfx_tlc="┌" 
    local prompt_gfx_mlc="├"
    local prompt_gfx_blc="└"
    prompt_gfx_hyphen="─"

    prompt_gfx_tbox="${prompt_gfx_tlc}${prompt_gfx_hyphen}"
    prompt_gfx_bbox="${prompt_gfx_blc}${prompt_gfx_hyphen}"

    prompt_prepare_git
    git_part=%(1v.%F{yellow}%1v%f.)
    prompt_line_1a="${prompt_gfx_tbox}[${git_part}%F{cyan}%~/%f]"
    prompt_line_1b="(%D{%H:%M:%S})"



    prompt_construct_second_line_left
    add-zsh-hook precmd prompt_kalkin_precmd
}

prompt_prepare_git() {
    autoload -Uz vcs_info
    zstyle ':vcs_info:*' disable bzr cdv fossil mtn p4 svk tla git-p4
    zstyle ':vcs_info:*' get-revision true
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:git:*' stagedstr 'Ⓐ '
    zstyle ':vcs_info:(git|hg):*' unstagedstr 'Ⓜ '
    zstyle ':vcs_info:*' formats "%b$VCS_BRANCH_ICON%8.8i-%c"
}

prompt_construct_first_line(){
    local prompt_line_1a_width=${#${(S%%)prompt_line_1a//(\%([KF1]|)\{*\}|\%[Bbkf])}}
    local prompt_line_1b_width=${#${(S%%)prompt_line_1b//(\%([KF1]|)\{*\}|\%[Bbkf])}}

    local prompt_padding_size=$(( COLUMNS
                                  - prompt_line_1a_width
                                  - prompt_line_1b_width ))

  # Try to fit in long path and user@host.
  if (( prompt_padding_size > 0 )); then
    local prompt_padding
    eval "prompt_padding=\${(l:${prompt_padding_size}::${prompt_gfx_hyphen}:)_empty_zz}"
    prompt_line_1="$prompt_line_1a$prompt_padding$prompt_line_1b"
    first_line_left=$prompt_line_1
    return
  fi

  # Didn't fit; try to fit in just long path.
  if (( prompt_padding_size > 0 )); then
    local prompt_padding
    eval "prompt_padding=\${(l:${prompt_padding_size}::${prompt_gfx_hyphen}:)_empty_zz}"
    prompt_line_1="$prompt_line_1a$prompt_padding"
    first_line_left=$prompt_line_1
    return
  fi

  # Still didn't fit; truncate 
  local prompt_pwd_size=$(( COLUMNS - 5 ))
  prompt_line_1="$prompt_gfx_tbox$prompt_l_paren%B%F{$prompt_adam2_color2}%$prompt_pwd_size<...<%~%<<$prompt_r_paren%b%F{$prompt_adam2_color1}$prompt_gfx_hyphen"
  first_line_left=$prompt_line_1
}

prompt_construct_second_line_left(){
    local user_machine_context    

    # only show the username if it's not kalkin
    if [[ "$USERNAME" != "user" && "$USERNAME" != "kalkin" ]]; then
        user_machine_context="%F{blue}%n%f%F{green}@%f%F{blue}%m%f:"
    else 
        user_machine_context="%F{blue}%m%f:"
    fi
    second_line_left=$prompt_gfx_bbox
    second_line_left+=$user_machine_context
    #second_line_left+="%(1v.%F{yellow}↳%1v%f.)" # show git info if needed
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
    prompt_construct_first_line
    print -rP "$first_line_left"
    PS1="$second_line_left"
}

TRAPWINCH ()
{
    prompt_vcs_info
    prompt_construct_first_line
    echo 
    print -rP "$first_line_left"
    zle redisplay
}

prompt_kalkin_setup
