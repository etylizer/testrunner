-module(tycheck_simple_fail_26).
-compile([nowarn_export_all, export_all]).

-spec case_10_fail(any()) -> integer().
case_10_fail(X) ->
    case X of
        % should fail because Y does not have type integer
        % in the guard but abs requires a number
        Y when abs(Y) > 2 andalso is_integer(Y) -> Y;
        _ -> 42
    end.
