-module(funs2_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_mapfoldr() -> {[{number()}], number()}.
test_mapfoldr() ->
    Res = lists:mapfoldr(fun (N, Sum) -> {{N}, N + Sum} end,
                         0,
                         [1, 2, 3]),
    Res.
