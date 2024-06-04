-module(tycheck_simple_fail_8).
-compile([nowarn_export_all, export_all]).

-spec char_09_fail() -> $a.
char_09_fail() -> $b.
