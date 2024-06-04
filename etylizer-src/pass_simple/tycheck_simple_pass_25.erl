-module(tycheck_simple_pass_25).
-compile([nowarn_export_all, export_all]).

-spec op_08() -> list().
op_08() -> [1,2] ++ ["foo", "bar"].
