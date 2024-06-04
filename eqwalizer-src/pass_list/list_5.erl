-module(list_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec range_help(integer(), integer(),
                 [integer()]) -> [integer()].
range_help(Lo, Hi, L) when Lo =< Hi ->
    range_help(Lo, Hi - 1, [Hi | L]);
range_help(_Lo, _Hi, L) -> L.
