-module(dict_use_4).

-export([ok4/0]).

ok4() ->
  dict:fetch(foo, dict:new()).
