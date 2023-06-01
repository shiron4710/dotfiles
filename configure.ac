#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.71])
AC_INIT([dotfiles], [1.0])
AM_INIT_AUTOMAKE([foreign])

AC_CONFIG_FILES([Makefile])

# Checks for stow
AC_CHECK_PROGS(STOW, [stow], [no])

if test "x$STOW" = "xno"; then
  AC_MSG_ERROR([Stow is required to install Dotfiles])
fi

AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AS_CASE(["${build_os}"],
[linux*], [
  OS_DIR="linux"
],
[darwin*], [
  OS_DIR="macOS"
])


AC_SUBST([OS_DIR], [$OS_DIR])

AC_OUTPUT
