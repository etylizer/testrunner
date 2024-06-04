-module(rec_use).

-export([wrong4/0]).

wrong4() ->
    tuple_size(rec_adt:new()).
