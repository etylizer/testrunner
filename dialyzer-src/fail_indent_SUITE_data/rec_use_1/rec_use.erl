-module(rec_use).

-export([wrong1/0]).

wrong1() ->
    case rec_adt:new() of
	{rec, _, 42} -> weird1;
	R when tuple_size(R) =:= 3 -> weird2
    end.

