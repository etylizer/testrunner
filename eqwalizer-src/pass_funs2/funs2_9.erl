-module(funs2_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec mapboth(fun((T1) -> U1), [T1], fun((T2) -> U2),
              [T2]) -> {[U1], [U2]}.
mapboth(F1, T1s, F2, T2s) ->
    {lists:map(F1, T1s), lists:map(F2, T2s)}.
-spec test_mapboth1() -> {[number()], [[a]]}.
test_mapboth1() ->
    mapboth(fun (X) -> X + 1 end,
            [1],
            fun (X) -> X ++ [a] end,
            [[a]]).
