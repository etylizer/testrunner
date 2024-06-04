-module(rec_use).

-export([ok2/0]).

ok2() ->
    R1 = rec_adt:new(),
    B1 = rec_adt:get_b(R1),
    R2 = rec_adt:set_b(R1, 42),
    B2 = rec_adt:get_b(R2),
    B1 =:= B2.
