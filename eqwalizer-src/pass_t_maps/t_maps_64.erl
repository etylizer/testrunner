-module(t_maps_64).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec no_kv_neg(K, [{K, V}]) -> {K, V}.
no_kv_neg(K, Props) ->
    case Props of #{K := V} -> {K, V} end.
