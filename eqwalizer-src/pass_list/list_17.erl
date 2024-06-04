-module(list_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foldl(fun((A, B) -> B), B, [A]) -> B.
foldl(F, Acc, [H | T]) -> foldl(F, F(H, Acc), T);
foldl(_F, Acc, []) -> Acc.
-spec maximum([A]) -> maybe:maybe(A).
maximum([]) -> {'$#maybe:maybe.nothing'};
maximum([H | T]) ->
    {'$#maybe:maybe.just', foldl(fun basics:max/2, H, T)}.
