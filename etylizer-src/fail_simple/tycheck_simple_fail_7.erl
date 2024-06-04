-module(tycheck_simple_fail_7).
-compile([nowarn_export_all, export_all]).

-spec char_08_fail() -> char().
char_08_fail() -> foobar.
