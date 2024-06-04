-module(list_23).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map2(fun((A, B) -> Res), [A], [B]) -> [Res].
map2(F, [H1 | T1], [H2 | T2]) ->
    [F(H1, H2) | map2(F, T1, T2)];
map2(_, _, _) -> [].
