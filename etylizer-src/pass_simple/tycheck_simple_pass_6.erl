-module(tycheck_simple_pass_6).
-compile([nowarn_export_all, export_all]).

-spec char_07() -> $a.
char_07() -> 97. % ascii code for a
