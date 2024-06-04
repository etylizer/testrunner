-module(arr_2).
-compile([nowarn_export_all, export_all]).

%% http://erlang.org/pipermail/erlang-questions/2014-August/080445.html

-define(A, array).

-spec test2(?A:array(T), non_neg_integer(), T) -> ?A:array(T).

test2(Array, N, Value) when N > 0 ->
    ?A:set(N, Value, Array).
