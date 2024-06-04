-module(tycheck_simple_pass_28).
-compile([nowarn_export_all, export_all]).

-spec case_04(atom()) -> foobar.
case_04(X) ->
    case X of
        foobar -> X; % fails in gradualizer
        _ -> foobar
    end.
