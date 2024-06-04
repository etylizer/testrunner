-module(tycheck_simple_pass_31).
-compile([nowarn_export_all, export_all]).

-spec case_09(any()) -> float().
case_09(X) ->
    case X of
        Y when is_float(Y) -> Y;
        _ -> 42.0
    end.
