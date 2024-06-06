-module(custom_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_get_2_10_neg(term()) -> term().
map_get_2_10_neg(M) ->
    Res = maps:get(a, M, false),
    Res.
