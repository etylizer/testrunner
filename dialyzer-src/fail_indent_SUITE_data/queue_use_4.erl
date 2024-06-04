-module(queue_use_4).
-compile([nowarn_export_all, export_all]).

wrong4() ->
    Q0 = queue:new(),
    Q1 = queue:in(42, Q0),
    Q1 =:= {[42],[]}.