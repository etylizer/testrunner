-module(tycheck_simple_fail_37).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_06_fail(list(integer())) -> integer().
list_pattern_06_fail(L) ->
    case L of
        [] -> 1;
        [1 | _] -> 2;
        [_X] -> 3 % not exhaustive
    end.
