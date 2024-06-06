-module(eqwater_108).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ41({string() | undefined,
             string()}) -> string().
occ41(T = {undefined, S}) -> S;
occ41(T = {S, _}) -> S.
