-module(queue_use_2).

-export([ok2/0]).

ok2() ->
    Q0 = queue:new(),
    Q1 = queue:in(42, Q0),
    {{value, 42}, Q2} = queue:out(Q1),
    queue:is_empty(Q2).
