-module(custom_33).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_filter_2_4_wip(boolean()) -> #{number() =>
                                              atom()}.
maps_filter_2_4_wip(B) ->
    M = #{1 => a, 2 => b},
    It = maps:iterator(M),
    F = fun (K, V) -> K =:= V end,
    case B of
        true -> maps:filter(F, M);
        false -> maps:filter(F, It)
    end.
