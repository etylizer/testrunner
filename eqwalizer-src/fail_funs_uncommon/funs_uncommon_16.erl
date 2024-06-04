-module(funs_uncommon_16).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rectup, {field :: {fun((a) -> a), atom()}}).
-record(rec, {field :: fun((a) -> a)}).
-spec test16() -> number().
test16() ->
    F = fun (X) -> X end,
    _ = F(2),
    F(3).
