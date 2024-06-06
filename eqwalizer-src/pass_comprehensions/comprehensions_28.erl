-module(comprehensions_28).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec num_atom(number(), atom()) -> number().
num_atom(_, _) -> 3.
-spec test25([{number()} | [atom()]]) -> [number()].
test25(L) -> [num_atom(A, B) + 1 || {A} <- L, [B] <- L].
