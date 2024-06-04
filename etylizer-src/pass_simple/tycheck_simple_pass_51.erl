-module(tycheck_simple_pass_51).
-compile([nowarn_export_all, export_all]).

-spec fun_local_02() -> integer().
fun_local_02() ->
    F = fun Add(X) ->
        case X of
            0 -> 0;
            Y -> Y + Add(X - 1)
        end
        end,
    F(3).
