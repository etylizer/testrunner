-module(eqwater_73).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ26_neg(fun() | {term()}) -> {term()}.
occ26_neg(F) when is_function(F, 1) -> {F(1)};
occ26_neg(T) -> T.
