AC_INIT(bkg-zsh-config, 2.4.2)
AM_INIT_AUTOMAKE([foreign])

AC_CONFIG_MACRO_DIR([m4])

BKG_ENABLE_XDG
AM_CONDITIONAL([ENABLE_XDG], [test x"$enable_xdg" = x"yes"])

BKG_PACKAGE_INFO([Good and sane zsh config])
BKG_PACKAGE_GENTOO(["app-shells"])

AC_CHECK_PROGS([MAN2ROFF], [md2man-roff go-md2man])
AM_CONDITIONAL([MAN2ROFF], [test -n "$MAN2ROFF"])

AC_CHECK_PROG([DIRCOLORS], dircolors, yes)
AM_CONDITIONAL([DIRCOLORS], [test x"$DIRCOLORS" = xyes])

AC_ARG_WITH([plugins], AC_HELP_STRING([--with-plugins],
    [Build and install fast-syntax-higlighting, you-should-use, zaw & zsh-autosuggestions plugins]))

if test "x$with_plugins" == xyes; then
    AC_MSG_NOTICE("Building plugins")
    PLUGINS="zaw you-should-use fast-syntax-higlighting zsh-autosuggestions"
    AC_CONFIG_SUBDIRS([fast-syntax-higlighting you-should-use zaw
                   zsh-autosuggestions/])
else
    PLUGINS=
fi

AC_SUBST(PLUGINS)
test "$prefix" = 'NONE' && prefix=/usr/local

AC_SUBST(BKG_INSTALL_DIR, "$prefix/share/$PACKAGE_NAME")
AC_SUBST(BKG_DATAROOT_DIR, "$prefix/share/")
AC_CONFIG_FILES([Makefile zshenv units/fast-syntax-highlighting.plugin.zsh
                 units/you-should-use.plugin.zsh units/zaw.plugins.zsh
                 units/zsh-autosuggestions.plugin.zsh])
AC_OUTPUT
