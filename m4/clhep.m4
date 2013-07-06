dnl -*- mode: autoconf -*- 
dnl
dnl Autoconf macro to resolve CLHEP library dependency
dnl Synopsis:
dnl
dnl  CLHEP_DEPS

AC_DEFUN([CLHEP_DEPS],
[
	DEPNAME=clhep
	echo "SEARCHING FOR \"${DEPNAME}\" ..."
	LIBCONFIG="${DEPNAME}-config"
	AC_MSG_CHECKING(${LIBCONFIG})
	if which "${LIBCONFIG}" > /dev/null 2> /dev/null ; then
		AC_MSG_RESULT(yes)
		DEP_CFLAGS="${DEP_CFLAGS} "`"${LIBCONFIG}" --include`
		DEP_LIBS="`${LIBCONFIG} --libs` ${DEP_LIBS}"
	else
		AC_MSG_ERROR([Could not find ]${DEPNAME}[ library!])
	fi
])


#
# EOF
#
