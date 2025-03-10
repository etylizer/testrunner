-module(custom_45).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_map_2_3_neg(boolean()) -> #{number() =>
                                           boolean()}.
maps_map_2_3_neg(B) ->
    M = #{1 => a, 2 => b},
    It = maps:iterator(M),
    case B of
        true -> maps:map(fun (_, _) -> self() end, M);
        false -> maps:map(fun (_, _) -> self() end, It)
    end.
