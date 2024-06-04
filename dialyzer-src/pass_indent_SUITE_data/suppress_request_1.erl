-module(suppress_request_1).
-compile([nowarn_export_all, export_all]).


-spec test1_b(a | b) -> ok. % spec is subtype (suppressed by default)
test1_b(A) ->
    ok = test1_1(A).

-spec test1_1(a | b | c) -> ok.
test1_1(_) ->
    ok.

tuple() ->
    {a, b}.
