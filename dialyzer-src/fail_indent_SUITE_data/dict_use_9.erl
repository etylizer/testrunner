-module(dict_use_9).
-compile([nowarn_export_all, export_all]).

w8(Fun) ->
  dict:merge(Fun, 42, [1,2]).
