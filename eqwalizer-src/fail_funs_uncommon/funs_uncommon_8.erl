-module(funs_uncommon_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rectup, {field :: {fun((a) -> a), atom()}}).
-record(rec, {field :: fun((a) -> a)}).
-spec test_08() -> {fun((a) -> a)}.
test_08() ->
    Res = {fun (X) -> X end},
    Res.
