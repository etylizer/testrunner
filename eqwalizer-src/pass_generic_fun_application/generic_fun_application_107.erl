-module(generic_fun_application_107).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec to_shape(T) -> #{a := T, b => T}.
to_shape(X) -> #{a => X, b => X}.
-spec test_to_shape() -> #{a := number(),
                           b => number()}.
test_to_shape() ->
    X = to_shape(1),
    X.
