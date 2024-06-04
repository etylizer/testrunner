-module(generic_fun_application_72).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec test_aliases_pos(fun(({X, Y}) -> {X,
                                        Y})) -> fun((tup(X, Y)) -> tup(X, Y)).
test_aliases_pos(F) -> F.
