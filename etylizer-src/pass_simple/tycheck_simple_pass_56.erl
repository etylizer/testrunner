-module(tycheck_simple_pass_56).
-compile([nowarn_export_all, export_all]).

-spec if_05(atom()) -> integer().
if_05(X) ->
    if X =:= 0 -> 0;
        true -> 1
    end.
