-module(tycheck_simple_fail_24).
-compile([nowarn_export_all, export_all]).

-spec case_05_fail(atom()) -> foobar.
case_05_fail(X) ->
    case X of
        spam -> X;
        _ -> foobar
    end.
