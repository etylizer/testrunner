-module(custom_23).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec keyfind_5() -> false | {c, d} | {e, f}.
keyfind_5() ->
    Res = lists:keyfind(a, 1, [{c, d}, {e, f}]),
    Res.
