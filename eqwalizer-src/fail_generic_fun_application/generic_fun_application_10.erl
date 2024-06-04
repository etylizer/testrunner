-module(generic_fun_application_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec map_att(#{a => T}) -> T.
map_att(M) -> maps:get(a, M).
-spec test11_neg(#{true => pid()}) -> pid().
test11_neg(M) -> map_att(M).
