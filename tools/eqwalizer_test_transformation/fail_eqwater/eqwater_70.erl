-module(eqwater_70).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ23_neg({a, A} | {b, B}, fun((B) -> A)) -> A.
occ23_neg({a, A}, _) -> A;
occ23_neg({_, B}, F) -> F(B).
