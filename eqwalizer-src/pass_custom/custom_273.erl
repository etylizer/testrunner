-module(custom_273).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_find_1(pid(), #{pid() => atom()}) -> atom().
maps_find_1(K, M) ->
    {ok, Val} = maps:find(K, M),
    Val.
