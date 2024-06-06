-module(eqwater_sound_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type ab() :: atom() | binary().
-spec t02(ab()) -> binary().
t02(B) when is_binary(B), bit_size(B) > 2 -> B;
t02(A) -> atom_to_binary(A).
