-module(tycheck_simple_fail_33).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_03_fail(list(integer())) -> integer().
list_pattern_03_fail(L) ->
    case L of
        % not exhaustive
        [X | _] -> X
    end.
