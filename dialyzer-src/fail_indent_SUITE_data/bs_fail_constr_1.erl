-module(bs_fail_constr_1).
-compile([nowarn_export_all, export_all]).

w1(V) when is_float(V) ->
  <<V/integer>>.