-module(custom_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_get_2_14_neg(pid(),
                       #{pid() => atom()}) -> atom().
map_get_2_14_neg(K, M) ->
    Res = maps:get(K, M, 0),
    Res.
