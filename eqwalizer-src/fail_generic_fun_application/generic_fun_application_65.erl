-module(generic_fun_application_65).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec num_and_t(number(), T) -> T.
num_and_t(_, X) -> X.
-spec test_dict1(#{atom() => pid()}) -> ok.
test_dict1(D) -> num_and_t(D, D).
