-module(tycheck_simple_pass_52).
-compile([nowarn_export_all, export_all]).

-spec fun_local_03() -> integer().
fun_local_03() ->
    F = fun
            Add(0) -> 0;
            Add(X) -> X + Add(X + 1)
        end,
    F(3).
