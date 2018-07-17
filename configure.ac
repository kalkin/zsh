AC_INIT(zsh, 1.0)
AM_INIT_AUTOMAKE([foreign])
AC_CHECK_PROG(PRINT,cat)

AC_CONFIG_MACRO_DIR([m4])

BKG_ENABLE_XDG
AM_CONDITIONAL([ENABLE_XDG], [test x"$enable_xdg" = x"yes"])

AC_CHECK_PROG([MAN2ROFF], [md2man-roff], [md2man-roff], [''])
AM_CONDITIONAL([MANGENERATOR], [test "$MAN2ROFF" = "md2man-roff"])

test "$prefix" = 'NONE' && prefix=/usr/local

AC_SUBST(BKG_INSTALL_DIR, "$prefix/share/$PACKAGE_NAME")
AC_SUBST(BKG_DATAROOT_DIR, "$prefix/share/")
AC_CONFIG_FILES([Makefile zshenv units/fast-syntax-highlighting.plugin.zsh
                 units/you-should-use.plugin.zsh units/zaw.plugins.zsh
                 units/zsh-autosuggestions.plugin.zsh units/ls-setup.zsh])
AC_CONFIG_SUBDIRS([fast-syntax-higlighting you-should-use zaw
                   zsh-autosuggestions/])
AC_OUTPUT
