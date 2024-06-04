-module(rec_use).

-export([wrong3/0]).

wrong3() ->
    R = rec_adt:new(),
    R =:= {rec, gazonk, 42}.
