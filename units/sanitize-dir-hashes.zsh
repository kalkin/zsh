# sanitize directory hashes
hash -dL|grep "\=/$"|cut -d" " -f3|cut -d"=" -f1|while read n; do hash -d "$n="; done

