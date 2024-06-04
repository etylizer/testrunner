-module(parametricity_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec zipwith(Combine, L1, L2) -> L3 when Combine ::
                                              fun((X, Y) -> T),
                                          L1 :: [X], L2 :: [Y], L3 :: [T].
zipwith(F, [X | Xs], [Y | Ys]) ->
    [F(X, Y) | zipwith(F, Xs, Ys)];
zipwith(_, [], []) -> [].
