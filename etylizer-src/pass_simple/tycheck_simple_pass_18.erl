-module(tycheck_simple_pass_18).
-compile([nowarn_export_all, export_all]).

-spec fun_03(string(), integer()) -> integer().
fun_03(_X, Y) -> Y.
