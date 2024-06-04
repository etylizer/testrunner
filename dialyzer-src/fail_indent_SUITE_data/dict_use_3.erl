-module(dict_use_3).
-compile([nowarn_export_all, export_all]).

w2() ->
  case dict:new() of
    [] -> nil;
    42 -> weird
  end.
