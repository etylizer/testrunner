-module(tycheck_simple_pass_63).
-compile([nowarn_export_all, export_all]).

-spec foo([T]) -> [T].
foo(L) ->
    case L of
        [] -> [];
        [_X|XS] -> XS
    end.
