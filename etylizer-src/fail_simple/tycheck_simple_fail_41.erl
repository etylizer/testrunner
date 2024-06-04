-module(tycheck_simple_fail_41).
-compile([nowarn_export_all, export_all]).

-spec if_03_fail(integer()) -> integer().
if_03_fail(X) ->
    if X =:= 0 -> 42;
        true -> "foo"
    end.
