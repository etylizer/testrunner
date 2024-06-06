-module(eqwater_134).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_guard_integer(any()) -> integer().
occ_guard_integer(V) when V =:= 0 -> V;
occ_guard_integer(V) when V =/= 1 -> -1;
occ_guard_integer(V) -> V.
