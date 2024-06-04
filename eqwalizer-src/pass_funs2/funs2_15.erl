-module(funs2_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec apply0(fun(() -> T)) -> T.
apply0(F) -> F().
-spec test_apply_nullary_lambda() -> a.
test_apply_nullary_lambda() ->
    F = fun () -> a end,
    Res = apply0(F),
    Res.
