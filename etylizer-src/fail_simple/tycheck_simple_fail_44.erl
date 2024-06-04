-module(tycheck_simple_fail_44).
-compile([nowarn_export_all, export_all]).

-spec tuple_05_fail({atom(), integer()}) -> integer().
tuple_05_fail(X) ->
    case X of
        {A, _} -> A
    end.
