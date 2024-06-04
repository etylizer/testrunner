-module(tycheck_simple_fail_34).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_04_fail(list(integer())) -> integer().
list_pattern_04_fail(L) ->
    case L of
        [] -> 1;
        % not exhaustive
        [_X, Y | _] -> Y
    end.
