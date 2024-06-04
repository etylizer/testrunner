-module(tycheck_simple_fail_6).
-compile([nowarn_export_all, export_all]).

-spec char_06_fail() -> $a.
char_06_fail() -> 1.
