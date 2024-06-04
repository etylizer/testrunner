-module(tycheck_simple_pass_59).
-compile([nowarn_export_all, export_all]).

-spec tuple_04({atom(), integer()}) -> integer().
tuple_04(X) ->
    case X of
        {_, I} -> I
    end.
