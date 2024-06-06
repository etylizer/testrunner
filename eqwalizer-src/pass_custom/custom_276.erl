-module(custom_276).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_find_4(term(),
                  #{a => atom(), n => number()}) -> atom() | number().
maps_find_4(K, M) ->
    {ok, A} = maps:find(K, M),
    A.
