-module(eqwater_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ02(a | {b, integer()}) -> integer().
occ02(Arg) ->
    case Arg of
        a -> 0;
        {_, I} -> I
    end.
