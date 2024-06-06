-module(eqwater_sound_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec fun_trick_neg(_T, U) -> U.
fun_trick_neg(X, _) when is_function(X, 0) -> X.
