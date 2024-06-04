-module(tycheck_simple_fail_18).
-compile([nowarn_export_all, export_all]).

-spec fun_02_fail(integer()) -> atom().
fun_02_fail(X) -> X.
