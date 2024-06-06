-module(eqwater_104).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ37({atom()} |
            {{atom()}, {atom()}}) -> {{atom()}, {atom()}}.
occ37(P2 = {_, _}) -> P2;
occ37(P1) -> {P1, P1}.
