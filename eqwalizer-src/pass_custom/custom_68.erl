-module(custom_68).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_filtermap_1() -> [number()].
lists_filtermap_1() ->
    lists:filtermap(fun is_function/1, [1, 2]).
