-module(list_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec range(integer(), integer()) -> [integer()].
range_help(Lo, Hi, L) when Lo =< Hi ->
    range_help(Lo, Hi - 1, [Hi | L]);
range_help(_Lo, _Hi, L) -> L.
-spec range_help(integer(), integer(),
                 [integer()]) -> [integer()].
map2(F, [H1 | T1], [H2 | T2]) ->
    [F(H1, H2) | map2(F, T1, T2)];
map2(_, _, _) -> [].
-spec indexed_map(fun((integer(), A) -> B), [A]) -> [B].
range(Lo, Hi) -> range_help(Lo, Hi, []).
-spec map2(fun((A, B) -> Res), [A], [B]) -> [Res].
indexed_map(F, Xs) ->
    map2(F, range(0, list:length(Xs) - 1), Xs).
