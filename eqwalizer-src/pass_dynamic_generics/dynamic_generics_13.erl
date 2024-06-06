-module(dynamic_generics_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec game2([number()]) -> none | {some, number()}.
game2(L) ->
    lists:foldl(fun Step(X, none) when X > 100 -> {some, X};
                    Step(_, none) -> none;
                    Step(X, {some, Acc}) when Acc == 1000 -> Step(X, none);
                    Step(X, {some, Acc}) -> {some, X + Acc}
                end,
                {some, 0},
                L).
