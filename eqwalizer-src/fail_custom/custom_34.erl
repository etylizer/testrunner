-module(custom_34).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_filter_2_5_neg(boolean()) -> #{number() =>
                                              atom()}.
maps_filter_2_5_neg(B) ->
    M = #{1 => a, 2 => b},
    It = maps:iterator(M),
    F = fun self/0,
    case B of
        true -> maps:filter(F, M);
        false -> maps:filter(F, It)
    end.
