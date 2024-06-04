-module(tycheck_simple_fail_4_2).
-compile([nowarn_export_all, export_all]).
-spec char_04_fail() -> atom().
char_04_fail() -> $a.
