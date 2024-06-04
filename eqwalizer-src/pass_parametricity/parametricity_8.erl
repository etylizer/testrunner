-module(parametricity_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec prefix(L1, L2) -> boolean() when L1 :: [T],
                                       L2 :: [T].
prefix([X | PreTail], [X | Tail]) ->
    prefix(PreTail, Tail);
prefix([], _) -> true;
prefix([_ | _], _) -> false.
