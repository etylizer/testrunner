-module(tycheck_simple_pass_50).
-compile([nowarn_export_all, export_all]).

% fun
-spec fun_local_01() -> integer().
fun_local_01() ->
    F = fun(X, Y) -> X + Y end,
    F(1, 2).
