-module(dict_use_3).

-export([ok3/0]).

ok3() ->
  Dict1 = dict:new(),
  Dict2 = dict:new(),
  Dict1 =:= Dict2.
