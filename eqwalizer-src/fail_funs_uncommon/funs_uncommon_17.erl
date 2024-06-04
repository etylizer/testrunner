-module(funs_uncommon_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rectup, {field :: {fun((a) -> a), atom()}}).
-record(rec, {field :: fun((a) -> a)}).
-spec test17() -> number().
test17() ->
    F = fun (X) -> X end,
    _ = F(an_atom),
    F(3).
