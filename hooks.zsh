function preexec() {
  local a=${${1## *}[(w)1]}  # get the command
  local b=${a##*\/}   # get the command basename
  a="${b}${1#$a}"     # add back the parameters
  a=${a//\%/\%\%}     # escape print specials
  a=$(print -Pn "$a" | tr -d "\t\n\v\f\r")  # remove fancy whitespace
  a=${(V)a//\%/\%\%}  # escape non-visibles and print specials

  case "$TERM" in
    screen|screen.*)
      # See screen(1) "TITLES (naming windows)".
      # "\ek" and "\e\" are the delimiters for screen(1) window titles
      print -Pn "\ek%-3~ $a\e\\" # set screen title.  Fix vim: ".
      print -Pn "\e]2;%-3~ $a\a" # set xterm title, via screen "Operating System Command"
      ;;
    rxvt|rxvt-unicode|xterm|xterm-color|xterm-256color)
      print -Pn "\e]2;%m:%-3~ $a\a"
      ;;
  esac
}

function precmd() {
  case "$TERM" in
    screen|screen.rxvt)
      print -Pn "\ek%-3~\e\\" # set screen title
      print -Pn "\e]2;%-3~\a" # must (re)set xterm title
      ;;
    rxvt|rxvt-unicode|xterm|xterm-color|xterm-256color)
      print -Pn "\e]2;%m:%-3~ $a\a"
      ;;
  esac
}
