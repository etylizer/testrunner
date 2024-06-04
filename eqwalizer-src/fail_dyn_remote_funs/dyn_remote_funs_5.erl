-module(dyn_remote_funs_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_04(atom(), atom()) -> term().
test_04(L, F) ->
    Res = L:F(fun (X) -> X end, [3]),
    Res.
