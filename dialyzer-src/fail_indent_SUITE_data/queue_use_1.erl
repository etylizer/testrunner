-module(queue_use_1).
-compile([nowarn_export_all, export_all]).

wrong1() ->
    queue:is_empty({[],[]}).
