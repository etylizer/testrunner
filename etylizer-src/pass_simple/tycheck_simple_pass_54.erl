-module(tycheck_simple_pass_54).
-compile([nowarn_export_all, export_all]).

% if
-spec if_01(integer()) -> integer().
if_01(X) ->
    if X =:= 0 -> 42;
        true -> 0
    end.
