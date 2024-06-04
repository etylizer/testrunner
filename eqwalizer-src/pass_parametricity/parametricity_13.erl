-module(parametricity_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foldl(Fun, Acc, List) -> Acc when Fun :: fun((T,
                                                    Acc) -> Acc),
                                        List :: [T].
foldl(F, Acc, [Hd | Tail]) ->
    foldl(F, F(Hd, Acc), Tail);
foldl(_F, Acc, []) -> Acc.
