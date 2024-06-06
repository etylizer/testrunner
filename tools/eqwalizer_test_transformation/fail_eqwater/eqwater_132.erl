-module(eqwater_132).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_guard_binary_3_neg(binary() | ok) -> ok.
occ_guard_binary_3_neg(V) when V =:= <<"ok">> -> ok;
occ_guard_binary_3_neg(V) -> V.
