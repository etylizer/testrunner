-module(tycheck_simple_pass_44).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_01(list(integer())) -> integer().
list_pattern_01(L) ->
    case L of
        [] -> 1;
        [X | _] -> X
    end.
