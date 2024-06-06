-module(custom_306).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type state1() :: #{module := module(),
                    count := number()}.
-spec maps_put2(boolean()) -> state1().
maps_put2(B) ->
    M1 = #{},
    M2 = maps:put(module, foo, M1),
    M3 = case B of
             true -> maps:put(count, 0, M2);
             false -> M2
         end,
    M3.
