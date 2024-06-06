-module(dynamic_calls_21).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_15e_neg(fun((a) -> b) | fun(() -> b)) -> b.
test_15e_neg(F) ->
    Res = F(a),
    Res.
