-module(eqwater_sound_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type ab() :: atom() | binary().
-spec base1(ab()) -> binary().
base1(A) when is_atom(A) -> atom_to_binary(A);
base1(B) -> B.
