

PHP_ARG_ENABLE(hello, whether to enable Hello World support,
[ --enable-hello   Enable Hello World support])
if test "$PHP_HELLO" = "yes"; then
  AC_DEFINE(HAVE_HELLO, 1, [Whether you have Hello World])
  PHP_NEW_EXTENSION(test, test.c test_wrap.c, $ext_shared)
fi
