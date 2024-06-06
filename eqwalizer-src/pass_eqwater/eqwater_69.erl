-module(eqwater_69).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ22({a, A} | {b, B}, fun((B) -> A)) -> A.
occ22({a, A}, _) -> A;
occ22({b, B}, F) -> F(B).
