-module(custom_182).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec filtermap_none() -> [none()].
filtermap_none() ->
    lists:filtermap(fun (_) -> false end, [1, 3, 3]).
