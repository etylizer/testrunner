-module(eqwater_110).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ43_neg({string() | undefined,
                 string()}) -> string().
occ43_neg({F, S} = {_, _}) -> S;
occ43_neg({F, S} = {_, _}) -> F.
