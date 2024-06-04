-module(dict_use_8).
-compile([nowarn_export_all, export_all]).

w7() ->
  dict:fetch(foo, [1,2,3]).
