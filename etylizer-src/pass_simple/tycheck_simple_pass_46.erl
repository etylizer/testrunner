-module(tycheck_simple_pass_46).
-compile([nowarn_export_all, export_all]).

-spec list_pattern_03(nonempty_list(integer())) -> integer().
list_pattern_03(L) ->
    case L of
        [X | _] -> X
    end.
