-module(generic_fun_application_40).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec test40_neg(fun((A) -> B), {A, B},
                 {X, Y}) -> fun((X) -> Y).
fun0_id(F) -> F.
-spec fun0_id(fun(() -> X)) -> fun(() -> X).
test40_neg(F, _, _) -> fun0_id(F).
