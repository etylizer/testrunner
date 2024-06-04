-module(tycheck_simple_fail_35).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_04b_fail(list(integer())) -> integer().
list_pattern_04b_fail(L) ->
    case L of
        [] -> 1;
        % not exhaustive
        [_X, []] -> 2
    end.
