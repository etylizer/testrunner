-module(custom_52).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_map_2_10_neg() -> nok.
maps_map_2_10_neg() ->
    F = fun erlang:'=:='/2,
    maps:map(F, non_kv),
    nok.