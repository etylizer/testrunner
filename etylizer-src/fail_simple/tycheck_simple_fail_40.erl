-module(tycheck_simple_fail_40).
-compile([nowarn_export_all, export_all]).

-spec fun_local_05_fail(integer()) -> integer().
fun_local_05_fail(X) ->
    F = fun(Y) -> X + Y end,
    F("foo").
