-module(arr_3).
-compile([nowarn_export_all, export_all]).
%% http://erlang.org/pipermail/erlang-questions/2014-August/080445.html

-define(A, array).

-spec test3(?A:array(T), non_neg_integer(), _) -> ?A:array(T).

test3(Array, N, Value) ->
    ?A:set(N, Value, Array).
