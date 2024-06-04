-module(dict_use_1).
-compile([nowarn_export_all, export_all]).

middle() ->
  {w1(), w2()}.

w1() ->
  gazonk = dict:new().

w2() ->
  case dict:new() of
    [] -> nil;
    42 -> weird
  end.