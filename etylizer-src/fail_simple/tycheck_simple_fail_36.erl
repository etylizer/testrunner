-module(tycheck_simple_fail_36).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_05_fail(list(integer())) -> integer().
list_pattern_05_fail(L) ->
    case L of
        [] -> 1;
        [1 | _] -> 2 % not exhaustive
    end.
