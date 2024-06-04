-module(tycheck_simple_fail_42).
-compile([nowarn_export_all, export_all]).

-spec if_04_fail(atom()) -> integer().
if_04_fail(X) ->
    if (X + 1) =:= 0 -> 0;
        true -> 1
    end.
