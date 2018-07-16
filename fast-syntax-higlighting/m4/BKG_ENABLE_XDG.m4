dnl BKG_ENABLE_XDG
dnl --------------
dnl
dnl If '--enable-xdg' is set, adjust directory vars according to XDG
dnl

AC_DEFUN([BKG_ENABLE_XDG], [AC_ARG_ENABLE([xdg],
    AC_HELP_STRING([--enable-xdg],
                   [Install according to XDG Base Directory specification]),
    [
     test -z "$XDG_CONFIG_HOME" && XDG_CONFIG_HOME="$HOME/.config"
     test -z "$XDG_DATA_HOME" && XDG_DATA_HOME="$HOME/.local/share"
     bindir="$HOME/.local/bin"
     datadir=$HOME/.local/share
     datarootdir=$HOME/.local/share
     docdir="$HOME/Documents/$PACKAGE_NAME"
     includedir="$HOME/.local/include"
     infodir=$HOME/.local/man
     libdir="$HOME/.local/lib"
     libexecdir="$HOME/.local/libexec"
     localstatedir="$XDG_DATA_HOME/$PACKAGE_NAME"
     mandir=$HOME/.local/man
     sysconfdir="$XDG_CONFIG_HOME"
     ]dnl
)dnl
AC_SUBST(enable_xdg)])dnl
