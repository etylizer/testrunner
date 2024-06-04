-module(tycheck_simple_pass_45).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_02(list(integer())) -> integer().
list_pattern_02(L) ->
    case L of
        [] -> 1;
        [_X, Y | _] -> Y;
        [X | _] -> X
    end.
