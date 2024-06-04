-module(tycheck_simple_fail_25).
-compile([nowarn_export_all, export_all]).

-spec case_08_fail(any(), any()) -> integer().
case_08_fail(X, Z) ->
    case Z of
        _ when is_integer(X) -> Z;
        _ -> 42
    end.
