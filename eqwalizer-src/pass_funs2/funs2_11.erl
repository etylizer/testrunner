-module(funs2_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec trans(fun((T) -> U), fun((U) -> V), T) -> V.
trans(F1, F2, X) -> F2(F1(X)).
-spec test_trans1_wip() -> term().
test_trans1_wip() ->
    trans(fun (X) -> X end, fun (X) -> X end, 1).
