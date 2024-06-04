-module(generic_fun_application_94).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec invariant(T) -> invar(T).
invariant(_) -> throw(not_implemented).
-spec
     test_invariant_pos_1(term()) -> fun((term()) -> term()).
test_invariant_pos_1(Any) ->
    X = invariant(Any),
    X.
