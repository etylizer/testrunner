-module(t_maps_72).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a() :: atom().
-spec val5(a(), {a()} | {a(), a()}) -> none().
val5(K, M) -> case M of #{K := V} -> V end.
