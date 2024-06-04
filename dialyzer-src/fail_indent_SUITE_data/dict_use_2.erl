-module(dict_use_2).
-compile([nowarn_export_all, export_all]).


w1() ->
  gazonk = dict:new().
