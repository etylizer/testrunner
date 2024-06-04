-module(arr_6).
-compile([nowarn_export_all, export_all]).

%% http://erlang.org/pipermail/erlang-questions/2014-August/080445.html

-define(A, array).

%% One would ideally want a warning also for test6(), but the current
%% analysis of parametrized opaque types is not strong enough to
%% discover this.
-spec test6(?A:array(integer()), non_neg_integer(), integer()) ->
                   ?A:array(any()).

test6(Array, N, Value) ->
     ?A:set(N, Value, Array).
