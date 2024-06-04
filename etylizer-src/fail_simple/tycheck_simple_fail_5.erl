-module(tycheck_simple_fail_5).
-compile([nowarn_export_all, export_all]).

-spec char_05_fail() -> $a.
char_05_fail() -> foobar.
