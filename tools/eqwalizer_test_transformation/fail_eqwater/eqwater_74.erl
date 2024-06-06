-module(eqwater_74).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ27_neg(fun() | {term()}) -> {term()}.
occ27_neg(T) when is_tuple(T) -> T;
occ27_neg(F) -> F().
