-module(tycheck_simple_fail_46).
-compile([nowarn_export_all, export_all]).

-spec inter_04_fail([T]) -> [T] ; ([T]) -> [T].
inter_04_fail(L) ->
    case L of
        [] -> [];
        [_X | XS] -> XS + 1 % ERROR ignored if branch ignored when type-checking
    end.
