-module(custom_54).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_fold_3_2_neg() -> [number() | a | b].
maps_fold_3_2_neg() ->
    M = #{1 => a, 2 => b},
    maps:fold(fun (K, V) -> [K, V] end, [], M).
