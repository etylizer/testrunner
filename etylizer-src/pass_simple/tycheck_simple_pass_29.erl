-module(tycheck_simple_pass_29).
-compile([nowarn_export_all, export_all]).

-spec case_06(any()) -> integer().
case_06(X) ->
    case X of
        Y when is_integer(Y) -> Y;
        _ -> 42
    end.
