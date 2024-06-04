-module(queue_use_1).

-export([ok1/0]).

ok1() ->
    queue:is_empty(queue:new()).

