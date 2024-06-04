-module(bs_fail_constr_2).
-compile([nowarn_export_all, export_all]).


w2(V) when is_atom(V) ->
  <<V/binary>>.