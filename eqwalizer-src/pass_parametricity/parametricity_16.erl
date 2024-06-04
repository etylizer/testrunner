-module(parametricity_16).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec mapfoldl(Fun, Acc, List1) -> {List2,
                                    Acc} when Fun :: fun((A, Acc) -> {B, Acc}),
                                              List1 :: [A], List2 :: [B].
mapfoldl(F, Accu0, [Hd | Tail]) ->
    {R, Accu1} = F(Hd, Accu0),
    {Rs, Accu2} = mapfoldl(F, Accu1, Tail),
    {[R | Rs], Accu2};
mapfoldl(_F, Accu, []) -> {[], Accu}.
