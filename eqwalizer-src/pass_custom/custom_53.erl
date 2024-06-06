-module(custom_53).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_fold_3_1(boolean()) -> [number() | a | b].
maps_fold_3_1(B) ->
    M = #{1 => a, 2 => b},
    It = maps:iterator(M),
    X = case B of
            true -> M;
            false -> It
        end,
    Res = maps:fold(fun (K, V, Acc) -> [K, V] ++ Acc end,
                    [],
                    X),
    Res.
