# Set the LINKS_BROWSER to any links like browser installed

if (( $+commands[links2] )) ; then
    export LINKS_BROWSER="links2"
elif (( $+commands[links] )) ; then
    export LINKS_BROWSER="links"
elif (( $+commands[lynx] )) ; then
    export LINKS_BROWSER="lynx"
fi

if (( $+commands[firefox] )) ; then
    export BROWSER=firefox
else
    export BROWSER=$LINKS_BROWSER
fi
