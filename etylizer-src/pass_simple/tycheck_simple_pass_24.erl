-module(tycheck_simple_pass_24).
-compile([nowarn_export_all, export_all]).

-spec op_05() -> boolean().
op_05() -> 1 =:= "foo".
