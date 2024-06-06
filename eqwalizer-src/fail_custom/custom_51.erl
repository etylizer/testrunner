-module(custom_51).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_map_2_9_neg(boolean()) -> #{a => a, b => b}.
maps_map_2_9_neg(B) ->
    M = #{a => a, b => b},
    It = maps:iterator(M),
    F = fun erlang:'=:='/2,
    case B of
        true -> maps:map(F, M);
        false -> maps:map(F, It)
    end.
