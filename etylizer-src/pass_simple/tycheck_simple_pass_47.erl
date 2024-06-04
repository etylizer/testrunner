-module(tycheck_simple_pass_47).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_07(list(integer())) -> integer().
list_pattern_07(L) ->
    case L of
        [] -> 1;
        [1 | _] -> 2;
        [_X | _] -> 3
    end.
