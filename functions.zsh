# Last edit on 2014-05-16 
# This file is a part of my zsh configuration. It's sourced from the .zshrc
# file. It contains some custom (or not) functions


# Create a /overview/ of all available function()'s; the description for
# each funtion() *must* be the first line above the string `function'!
# Otherwise it wont work.
# Display all function()'s with her descriptions
function funlist()
{
  grep -B 1 "^function" "$XDG_CONFIG_HOME/zsh/zshfunctions" | \
  grep -v "^\-\-$" | \
  awk '{ if(/^#/) { gsub(/^#[:space:]*/, ""); ht=$0 }; getline; gsub(/ ?\(\)/, ":"); printf("-> %-20s %s\n", $2, ht); }' | \
  sort
}
# shameless stolen from http://ft.bewatermyfriend.org/comp/data/zsh/zfunct.html
# MISC: zurl() create small urls via tinyurl.com needs wget, grep and sed. yes, it's a hack ;)
function zurl() {
  [[ -z ${1} ]] && print "please give an url to shrink." && return 1
    local url=${1}
    local tiny="http://tinyurl.com/create.php?url="
    # print "${tiny}${url}" ; return
    wget -O- -o /dev/null "${tiny}${url}"|grep -Eio "copy\('http://tinyurl.com/.*'"|grep -o "http://.*"|sed s/\'//
}

# DOC: Globbing is simple? Sure .. See zshexpn(1) /Glob Qualifiers for details and come back ;) 
function jlob()
{
echo -e "
     / directories
      . plain files
      @ symbolic links
      = sockets
      p named pipes (FIFOs)
      * executable plain files (0100)
      % device files (character or block special)
      %b block special files
      %c character special files
      r owner-readable files (0400)
      w owner-writable files (0200)
      x owner-executable files (0100)
      A group-readable files (0040)
      I group-writable files (0020)
      E group-executable files (0010)
      R world-readable files (0004)
      W world-writable files (0002)
      X world-executable files (0001)
      s setuid files (04000)
      S setgid files (02000)
      t files with the sticky bit (01000)
 print *(m-1) # Dateien, die vor bis zu einem Tag modifiziert wurden.
 print *(a1) # Dateien, auf die vor einem Tag zugegriffen wurde.
 print *(@) # Nur Links
 print *(Lk+50) # Dateien die ueber 50 Kilobytes grosz sind
 print *(Lk-50) # Dateien die kleiner als 50 Kilobytes sind
 print **/*.c # Alle *.c - Dateien unterhalb von \$PWD
 print **/*.c~file.c # Alle *.c - Dateien, aber nicht 'file.c'
 print (foo|bar).* # Alle Dateien mit 'foo' und / oder 'bar' am Anfang
 print *~*.* # Nur Dateien ohne '.' in Namen
 chmod 644 *(.^x) # make all non-executable files publically readable
 print -l *(.c|.h) # Nur Dateien mit dem Suffix '.c' und / oder '.h'
 print **/*(g:users:) # Alle Dateien/Verzeichnisse der Gruppe >users<
 echo /proc/*/cwd(:h:t:s/self//) # Analog zu >ps ax | awk '{print $1}'<"
}

# FUN: Making the right decisions is hard :>
function helpme()
{
  print "Please wait.. i'll think about.."
  for i in 1 2 3; do echo -ne "."; sleep 0.3; done
  if [ $RANDOM -gt $RANDOM ]
  then
    print "Yes\!"
  else
    print "No\!"
  fi
}

# ARCHIVE: extracts archived files (maybe)
function spex ()
{
        if [[ -f "$1" ]]
        then
                case "$1" in
                        *.tar.bz2) tar -xvjf "$1" ;;
                        *.tar.gz) tar -xvzf "$1" ;;
                        *.ace) unace e "$1" ;;
                        *.rar) unrar x "$1" ;;
                        *.deb) ar -x "$1" ;;
                        *.bz2) bzip2 -d "$1" ;;
                        *.lzh) lha x "$1" ;;
                        *.gz) gunzip -d "$1" ;;
                        *.tar) tar -xvf "$1" ;;
                        *.tgz) gunzip -d "$1" ;;
                        *.tbz2) tar -jxvf "$1" ;;
                        *.zip) unzip "$1" ;;
                        *.Z) uncompress "$1" ;;
                        *.shar) sh "$1" ;;
                        *.lzma) lzma -d "$1" ;;
                        *.xz) 7za x "$1" ;;
                        *) echo "'"$1"' Error. Please go away" ;;
                esac
        else
                echo "'"$1"' is not a valid file"
        fi
}

# FUN: my is bigger than yours :)
function dick()
{
echo `uptime|grep days|sed 's/.*up \([0-9]*\) day.*/\1\/10+/'; cat \
/proc/cpuinfo|grep '^cpu MHz'|awk '{print $4"/30 +";}';free|grep \
'^Mem'|awk '{print $3"/1024/3+"}'; df -P -k -x nfs | grep -v \
1k | awk '{if ($1 ~ "/dev/(scsi|sd)"){ s+= $2} s+= $2;} END \
{print s/1024/50"/15+70";}'`|sed 's/\,/\./'|bc|sed 's/\(.$\)/.\1cm/'
}

# MISC: mkdir && cd
function mcd()
{
  test -z "$1" && echo mkcd: no path given && return
  test -d "$1" && print "mkcd: Directory $1 already exists"
  mkdir -p -- "$1"
  cd -- "$1"
}

# SEARCH: search for various types or README file in dir and display them in $PAGER
function readme()
{
        if [[ -x `which vimpager` ]]; then
            local VPAGER=vimpager
        else
            local VPAGER=$PAGER
        fi
        local files
        files=(./(#i)*(read*me|lue*m(in|)ut)*(ND))
        if (($#files))
        then $VPAGER $files
        else
                print 'No README files. Please lart \$MAINTAINER!'
        fi
}

# ARCHIVE: Create a tar.gz from given directory
function ctarz()
{
  local archive_name
  archive_name="$1.tar.gz"
  archive_name=${archive_name/\//}
  tar cvfz "$archive_name" "$1"
  echo "Created archive $archive_name"
}

# ARCHIVE: Create a tar.bz2 from given directory
function ctarj()
{
  local archive_name
  archive_name="$1.tar.bz2"
  archive_name=${archive_name/\//}
  tar cvfj "$archive_name" "$1"
  echo "Created archive $archive_name"
}

if [[ -e /etc/gentoo-release ]] then
# HOOK: Runs rehash after each emerge
function emerge()
{
    if (( EUID != 0 )); then
        command sudo emerge $@
    else 
        command sudo emerge $@
    fi
    rehash
}
fi

if [[ -e /etc/debian_version ]]; then
# HOOK: Calls sudo if nessecary and rehash
function aptitude()
{
    cmd=("search" "show" "why");
    if [[ ${cmd[(i)$1]} -le ${#cmd} ]]; then
        command aptitude $@
    else 
        if (( EUID != 0 )); then
            command sudo aptitude $@
        else

            command aptitude $@
        fi
        rehash
    fi
}
fi

# MISC: Clear all iptable rules
function iptables-clear()
{
    sudo zsh -c "iptables -F; iptables -X; iptables -t nat -F; iptables -t nat -X; iptables -t mangle -F; iptables -t mangle -X; iptables -P INPUT ACCEPT; iptables -P FORWARD ACCEPT; iptables -P OUTPUT ACCEPT "
}

# MISC: Sed wrapper to remove colors, accepts sed options
function strip-ansi-colors()
{
    sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" $@
}

# GIT: List changes of subdirectories of "$1" since "$2"
function repos_log() {
    [ ! $# = 2 ] && echo "usage: repos_log DIR SINCE" >&2 && return 1
    dir="$1"
    shift
    since="$1"
    shift
	for d in "$dir"/*
	do
		result=$(git --no-pager --git-dir="$d/.git" log \
                    --graph --oneline --decorate=short --all \
                    --color=always --since="$since" "$@")
                 
		len=$(echo "$result"|wc -l) 
		[ "$len" -ge 2 ] && print -P "===>$fg_bold[green]$d" && echo "$result"
	done
}

# MISC: Print ANSI Color Table
function color-tbl() {
    header="fg_color  |bg_color| reset    | bold     | dim      | standout | undscr   | blink    | ???      | rev      | invis    | strike"
    RESULT=""
    colors=("black  " "red    " "green  " "yellow " "blue   " "magenta" "cyan   " "white  " "???    " "default")
    for f in `seq 0 9`; do;
        FG_COLOR=" $colors[f+1]  "
        for b in `seq 0 9`; do
            LINE="$FG_COLOR| $colors[b+1]|"
            for x in `seq 0 9`; do 
                LINE="$LINE\e[$x;3$f;4$b"m"$x""XX3""$f""XX4""$b""X\e[0;39;49m|"
            done
            RESULT="$RESULT""$LINE\n"
        done
    done
   echo "$header\n$RESULT$header"
}
