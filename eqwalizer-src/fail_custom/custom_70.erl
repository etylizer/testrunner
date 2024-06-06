-module(custom_70).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_filtermap_2_neg() -> [number() | a].
lists_filtermap_2_neg() ->
    lists:filtermap(fun erlang:binary_to_list/1, [1, 2, 3]).
