-module(dynamic_calls_16).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {method :: fun((atom()) -> pid())}).
-spec test_13e_neg(fun((a) -> b) | z) -> b.
test_13e_neg(F) ->
    Res = F(a),
    Res.
