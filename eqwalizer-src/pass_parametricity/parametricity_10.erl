-module(parametricity_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec zipwith3(Combine, L1, L2,
               L3) -> L4 when Combine :: fun((X, Y, Z) -> T),
                              L1 :: [X], L2 :: [Y], L3 :: [Z], L4 :: [T].
zipwith3(F, [X | Xs], [Y | Ys], [Z | Zs]) ->
    [F(X, Y, Z) | zipwith3(F, Xs, Ys, Zs)];
zipwith3(_, [], [], []) -> [].
