-module(funs2_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_foldl1_pos() -> number().
test_foldl1_pos() ->
    lists:foldl(fun (X, Sum) -> X + Sum end, 0, [1, 2, 3]).
