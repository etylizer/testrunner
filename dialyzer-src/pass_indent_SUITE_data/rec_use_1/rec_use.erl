-module(rec_use).

-export([ok1/0]).

ok1() ->
    rec_adt:set_a(rec_adt:new(), foo).
