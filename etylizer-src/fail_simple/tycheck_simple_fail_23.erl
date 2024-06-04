-module(tycheck_simple_fail_23).
-compile([nowarn_export_all, export_all]).

-spec case_03_fail(atom()) -> foobar.
case_03_fail(X) ->
    case X of
        spam -> egg;
        _ -> foobar
    end.
