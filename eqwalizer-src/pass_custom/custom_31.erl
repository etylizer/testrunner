-module(custom_31).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_filter_2_2(boolean()) -> #{number() =>
                                          atom()}.
maps_filter_2_2(B) ->
    M = #{1 => a, 2 => b},
    It = maps:iterator(M),
    case B of
        true -> maps:filter(fun (K, V) -> K =:= V end, M);
        false -> maps:filter(fun (K, V) -> K =:= V end, It)
    end.
