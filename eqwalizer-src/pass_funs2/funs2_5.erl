-module(funs2_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_foldl3() -> [number()].
test_foldl3() ->
    lists:foldl(fun (X, L) -> [X | L] end, [], [1, 2, 3]).
