-module(dict_use_7).
-compile([nowarn_export_all, export_all]).

w6() ->
  is_list(dict:new()).
