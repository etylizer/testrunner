-module(queue_use_6).
-compile([nowarn_export_all, export_all]).

wrong6() ->
    {{value, 42}, Q2} = queue:out({[42],[]}),
    Q2.
