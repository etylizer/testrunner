-module(funs_uncommon_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_11() -> [fun((a, b) -> a)].
test_11() ->
    Res = [fun (X, _) -> X end],
    Res.
