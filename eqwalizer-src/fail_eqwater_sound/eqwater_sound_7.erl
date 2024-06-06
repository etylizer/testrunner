-module(eqwater_sound_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec tuple_trick_neg(_T, U) -> U.
tuple_trick_neg({X}, _) -> X.
