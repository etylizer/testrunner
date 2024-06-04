-module(tycheck_simple_pass_4).
-compile([nowarn_export_all, export_all]).

-spec char_02() -> char().
char_02() -> $a.
