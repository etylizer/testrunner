-module(tycheck_simple_pass_5).
-compile([nowarn_export_all, export_all]).

-spec char_03() -> integer().
char_03() -> $a.
