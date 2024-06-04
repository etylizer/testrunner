-module(dynamic_local_funs_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec fold2_neg([{number(), number()}]) -> atom().
fold2_neg(L) ->
    F = fun ({N1, N2}, Acc) -> N1 + N2 + Acc end,
    lists:foldl(F, 0, L).
