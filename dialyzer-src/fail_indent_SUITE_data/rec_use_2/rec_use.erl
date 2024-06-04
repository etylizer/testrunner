-module(rec_use).

-export([wrong2/0]).

wrong2() ->
    R = list_to_tuple([rec, a, 42]),
    rec_adt:get_a(R).

