-module(generic_fun_application_67).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec shape_vars(#{a := T}, T) -> ok.
shape_vars(_, _) -> ok.
-spec test_dict2(T) -> T.
test_dict2(T) -> shape_vars(#{T => 3}, 3).
