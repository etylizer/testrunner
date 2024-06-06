-module(eqwater_130).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_guard_binary_1(any()) -> binary().
occ_guard_binary_1(V) when V =:= <<"ok">> -> V;
occ_guard_binary_1(V) -> <<"err">>.
