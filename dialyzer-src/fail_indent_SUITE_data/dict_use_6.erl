-module(dict_use_6).
-compile([nowarn_export_all, export_all]).

w5() ->
  case dict:new() of
    D when length(D) =/= 42 -> weird;
    D when is_atom(D) -> weirder;
    D when is_list(D) -> gazonk
  end.