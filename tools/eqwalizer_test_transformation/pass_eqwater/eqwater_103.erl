-module(eqwater_103).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ36({atom()} |
            {{atom()}, {atom()}}) -> {{atom()}, {atom()}}.
occ36({_, _} = P2) -> P2;
occ36(P1) -> {P1, P1}.
