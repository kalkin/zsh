# README

# Fixing Keybdings

The keybindings utilize terminfo, See also [zshbindings](/zshbindings)

1. Save the current `terminfo (5)` descriptions
```shell
infocmp $TERM > .terminfo.src
```

2. Edit the keybindings in `.terminfo.src`

3. Compile the terminfo entry description
```shell
tic .terminfo.src
```

4. Open a new Terminal
