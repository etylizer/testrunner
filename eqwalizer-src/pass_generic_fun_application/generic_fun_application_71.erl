-module(generic_fun_application_71).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec id(Z) -> Z.
id(Z) -> Z.
-spec idtup(tup(T, U)) -> tup(T, U).
idtup(X) -> id(X).
-spec test_idtup() -> {a, b}.
test_idtup() ->
    X = idtup({a, b}),
    X.
