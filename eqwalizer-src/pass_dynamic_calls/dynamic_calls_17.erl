-module(dynamic_calls_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {method :: fun((atom()) -> pid())}).
-spec test_14_pos(fun((a1) -> r1 | r2) |
                  fun((a1 | a2) -> r1 | r2) |
                  fun((a1 | a3) -> r2)) -> r1 | r2.
test_14_pos(FUnion) -> FUnion(a1).
