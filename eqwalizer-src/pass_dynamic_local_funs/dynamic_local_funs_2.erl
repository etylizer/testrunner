-module(dynamic_local_funs_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec fold1([{number(), number()}]) -> number().
fold1(L) ->
    F = fun ({N1, N2}, Acc) -> N1 + N2 + Acc end,
    lists:foldl(F, 0, L).
