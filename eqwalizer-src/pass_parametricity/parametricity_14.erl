-module(parametricity_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foldr(Fun, Acc, List) -> Acc when Fun :: fun((T,
                                                    Acc) -> Acc),
                                        List :: [T].
foldr(F, Acc, [Hd | Tail]) ->
    F(Hd, foldr(F, Acc, Tail));
foldr(_F, Acc, []) -> Acc.
