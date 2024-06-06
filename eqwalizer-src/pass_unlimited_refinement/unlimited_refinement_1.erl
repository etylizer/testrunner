-module(unlimited_refinement_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo(binary() | integer()) -> boolean().
is_special(_N) -> false.
-spec is_special(integer()) -> boolean().
foo(B) when is_binary(B) -> foo(binary_to_integer(B));
foo(X) when 100 =< X, X =< 200 -> true;
foo(X) when 300 =< X, X =< 400 -> true;
foo(X) when 500 =< X, X =< 600 -> true;
foo(X) when 700 =< X, X =< 800 -> true;
foo(X) when 900 =< X, X =< 1000 -> true;
foo(X) when 1100 =< X, X =< 1200 -> true;
foo(X) when 1300 =< X, X =< 1400 -> true;
foo(X) when 1500 =< X, X =< 1600 -> true;
foo(X) -> is_special(X).
