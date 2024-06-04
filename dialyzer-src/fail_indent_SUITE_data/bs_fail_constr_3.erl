-module(bs_fail_constr_3).
-compile([nowarn_export_all, export_all]).

w3(S) when is_integer(S), S < 0 ->
  <<42:S/integer>>.