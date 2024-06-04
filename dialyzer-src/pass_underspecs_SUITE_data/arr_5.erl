-module(arr_5).
-compile([nowarn_export_all, export_all]).

%% http://erlang.org/pipermail/erlang-questions/2014-August/080445.html

-define(A, array).

-spec test5(?A:array(T), non_neg_integer(), T) -> ?A:array(T).

test5(Array, N, Value) when is_integer(Value) ->
    ?A:set(N, Value, Array).
