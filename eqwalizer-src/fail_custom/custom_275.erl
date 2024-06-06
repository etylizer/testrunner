-module(custom_275).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_find_3_neg(#{a => atom(),
                        n => number() | pid()}) -> {atom(), number()}.
maps_find_3_neg(M) ->
    {ok, A} = maps:find(a, M),
    {ok, N} = maps:find(n, M),
    {A, N}.
