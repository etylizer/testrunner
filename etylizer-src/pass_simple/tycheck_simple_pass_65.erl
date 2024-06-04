-module(tycheck_simple_pass_65).
-compile([nowarn_export_all, export_all]).

-spec foo3(a|b) -> 1|true.
foo3(a) -> 1;
foo3(b) -> true.
