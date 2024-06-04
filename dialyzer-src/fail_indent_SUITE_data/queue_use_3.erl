-module(queue_use_3).
-compile([nowarn_export_all, export_all]).

wrong3() ->
    Q0 = queue:new(),
    Q1 = queue:in(42, Q0),
    {[42],Q2} = Q1,
    Q2.