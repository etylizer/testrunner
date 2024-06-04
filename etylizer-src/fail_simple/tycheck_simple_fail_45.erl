-module(tycheck_simple_fail_45).
-compile([nowarn_export_all, export_all]).

-spec inter_03_fail(integer()) -> integer()
; (atom()) -> atom().
inter_03_fail(X) ->
    case X of
        _ when is_integer(X) -> X + 1;
        _ -> X + 2
    end.
