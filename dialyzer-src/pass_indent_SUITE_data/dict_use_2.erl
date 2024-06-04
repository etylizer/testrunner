-module(dict_use_2).

-export([ok2/0]).

ok2() ->
  case dict:new() of X -> X end.
