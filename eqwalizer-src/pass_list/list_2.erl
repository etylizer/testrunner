-module(list_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec repeat(integer(), A) -> [A].
repeat_help(Res, N, _Val) when N =< 0 -> Res;
repeat_help(Res, N, Val) ->
    repeat_help([Val | Res], N, Val).
-spec repeat_help([A], integer(), A) -> [A].
repeat(N, Val) -> repeat_help([], N, Val).
