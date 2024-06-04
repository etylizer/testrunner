-module(generic_fun_application_122).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec fun_with_tuple(tuple(), [A]) -> {tuple(), [A]}.
fun_with_tuple(T, L) -> {T, L}.
-spec use_fun_with_tuple_2_neg() -> ok.
use_fun_with_tuple_2_neg() ->
    _ = fun_with_tuple({a, b}, {}),
    ok.
