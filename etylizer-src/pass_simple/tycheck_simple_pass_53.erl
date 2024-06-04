-module(tycheck_simple_pass_53).
-compile([nowarn_export_all, export_all]).

-spec fun_local_04() -> integer().
fun_local_04() ->
    F = fun
            Add(X) when X =:= 0 -> 0;
            Add(X) -> X + Add(X + 1)
        end,
    F(3).
