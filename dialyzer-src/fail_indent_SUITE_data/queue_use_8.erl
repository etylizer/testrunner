-module(queue_use_8).
-compile([nowarn_export_all, export_all]).

wrong8() ->
    tuple_queue({42, gazonk}).

tuple_queue({F, Q}) ->
    queue:in(F, Q).
