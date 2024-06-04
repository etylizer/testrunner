-module(lc_warnings_2).
-compile([nowarn_export_all, export_all]).

format(X) ->
    %% No warning since the result of the list comprehension is
    %% a list of simple.
    [io:format("~p\n", [E]) || E <- X],

    %% Warning explicitly suppressed.
    _ = [io:format("~p\n", [E]) || E <- X],
    ok.

