-module(custom_307).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type state2() :: #{module => module(),
                    count => number()}.
-spec maps_put3(boolean()) -> state2().
maps_put3(B) ->
    M1 = #{},
    M2 = maps:put(module, foo, M1),
    M3 = case B of
             true -> maps:put(count, 0, M2);
             false -> M1
         end,
    M3.
