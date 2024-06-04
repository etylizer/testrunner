-module(generic_fun_application_41).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec test39_neg(fun(() -> A), A, X) -> fun(() -> X).
fun0_id(F) -> F.
-spec test41_neg() -> atom().
test39_neg(F, _, _) -> fun0_id(F).
-spec fun0_id(fun(() -> X)) -> fun(() -> X).
test41_neg() -> (test39_neg(fun mk_number/0, 0, x))().
