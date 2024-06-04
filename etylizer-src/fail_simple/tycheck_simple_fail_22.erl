-module(tycheck_simple_fail_22).
-compile([nowarn_export_all, export_all]).

-spec case_02_fail(atom()) -> foobar.
case_02_fail(X) ->
    case X of
        spam -> foobar;
        Y -> Y
    end.
