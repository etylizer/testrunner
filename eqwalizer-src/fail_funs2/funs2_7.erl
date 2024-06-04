-module(funs2_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec mapdeep({fun((T) -> U)}, [T]) -> [U].
mapdeep(_, []) -> [];
mapdeep({F}, [H | T]) -> [F(H) | lists:map(F, T)].
-spec test_deep_lambda1() -> number().
test_deep_lambda1() ->
    X = mapdeep({fun (X) -> X + 1 end}, [1, 2, 3]),
    X.
