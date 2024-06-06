-module(custom_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_get_2_6_2(#{a => atom(),
                      n => number()}) -> {atom(), number()}.
map_get_2_6_2(M) ->
    Res = {map_get(a, M), map_get(n, M)},
    Res.
