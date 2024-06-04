-module(tycheck_simple_fail_19).
-compile([nowarn_export_all, export_all]).

-spec fun_04_fail(string(), integer()) -> integer().
fun_04_fail(X, _Y) -> X.
