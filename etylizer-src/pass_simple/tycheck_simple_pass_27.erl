-module(tycheck_simple_pass_27).
-compile([nowarn_export_all, export_all]).

% Case
-spec case_01(atom()) -> foobar.
case_01(X) ->
    case X of
        spam -> foobar;
        _ -> foobar
    end.
