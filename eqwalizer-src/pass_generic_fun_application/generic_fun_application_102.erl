-module(generic_fun_application_102).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec arg_eqv(fun((T) -> pid()),
              fun((T) -> pid())) -> T.
arg_eqv(_, _) -> throw(not_implemented).
-spec meets_4() -> ok.
meets_4() ->
    X = arg_eqv(fun stuff_1/1, fun stuff_2/1),
    X.
