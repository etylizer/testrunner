-module(generic_fun_application_88).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec contravariant(T) -> fun((T) -> ok).
contravariant(_) -> throw(not_implemented).
-spec test_contravariant_2() -> fun((number() |
                                     pid()) -> ok).
test_contravariant_2() ->
    X = contravariant(3),
    X.