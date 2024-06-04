-module(dynamic_calls_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {method :: fun((atom()) -> pid())}).
-spec test_08_neg() -> term().
ret_ok() -> ok.
-spec ret_ok() -> ok.
test_08_neg() ->
    F = fun ret_ok/0,
    F(1).
