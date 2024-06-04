-module(dict_use_6).

-export([ok6/0]).

ok6() ->
  dict:store(42, elli, dict:new()).
