-module(generic_fun_application_47).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec test_fun_doubler2() -> number().
fun_doubler(_, X) -> X.
-spec id(Z) -> Z.
id(Z) -> Z.
-spec fun_doubler(T, fun((T) -> T)) -> fun((T) -> T).
test_fun_doubler2() ->
    F = fun id/1,
    G = fun_doubler(F, fun fun1_id_pos_z/1),
    X = (G(G))(fun id/1),
    X(1).
