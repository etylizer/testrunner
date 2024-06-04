-module(dict_use_5).
-compile([nowarn_export_all, export_all]).

w4(Dict) when is_list(Dict) ->
  Dict =:= dict:new();
w4(Dict) when is_atom(Dict) ->
  Dict =/= dict:new().