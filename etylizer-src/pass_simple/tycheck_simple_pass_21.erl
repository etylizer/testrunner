-module(tycheck_simple_pass_21).
-compile([nowarn_export_all, export_all]).

-spec op_02() -> boolean().
op_02() -> 1 =:= 2.
