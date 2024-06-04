-module(arr_1).
-compile([nowarn_export_all, export_all]).
%% http://erlang.org/pipermail/erlang-questions/2014-August/080445.html

-define(A, array).

-spec test(?A:array(T), non_neg_integer(), T) -> ?A:array(T).

test(Array, N, Value) ->
    ?A:set(N, Value, Array).
