-module(custom_25).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec keysearch_2() -> false | {value, {c, d}}.
keysearch_2() ->
    Res = lists:keysearch(a, 1, [{c, d}]),
    Res.
