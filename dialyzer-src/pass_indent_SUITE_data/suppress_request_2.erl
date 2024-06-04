-module(suppress_request_2).
-compile([nowarn_export_all, export_all]).

test2_b() ->
    tuple(), % unmatched
    ok.

tuple() ->
    {a, b}.
