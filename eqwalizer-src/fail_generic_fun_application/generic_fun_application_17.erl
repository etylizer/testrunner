-module(generic_fun_application_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec test17_neg(fun()) -> ok.
lmap(_F, _XS) -> [].
-spec lmap(fun((A) -> B), [A]) -> [B].
test17_neg(F) -> lmap(F, [2, 4]).
