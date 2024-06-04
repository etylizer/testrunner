-module(dynamic_generics_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec step(number(), none | {some, number()}) -> none |
                                                 {some, number()}.
step(X, none) when X > 100 -> {some, X};
step(_, none) -> none;
step(X, {some, Acc}) when Acc == 1000 -> step(X, none);
step(X, {some, Acc}) -> {some, X + Acc}.
-spec game1([number()]) -> none | {some, number()}.
game1(L) -> lists:foldl(fun step/2, {some, 0}, L).
