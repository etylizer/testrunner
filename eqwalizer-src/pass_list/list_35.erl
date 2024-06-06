-module(list_35).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foldr(fun((A, B) -> B), B, [A]) -> B.
foldr(F, Acc, [H | T]) -> F(H, foldr(F, Acc, T));
foldr(_F, Acc, []) -> Acc.
-spec unzip([{A, B}]) -> {[A], [B]}.
unzip(Pairs) ->
    foldr(fun ({X, Y}, {Xs, Ys}) -> {[X | Xs], [Y | Ys]}
          end,
          {[], []},
          Pairs).
