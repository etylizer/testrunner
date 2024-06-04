-module(queue_use_2).
-compile([nowarn_export_all, export_all]).

wrong2() ->
    Q0 = {[],[]},
    queue:in(42, Q0).