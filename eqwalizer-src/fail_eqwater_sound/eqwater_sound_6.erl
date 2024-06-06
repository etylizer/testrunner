-module(eqwater_sound_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type ab() :: atom() | binary().
-spec t03(atom(), ab()) -> binary().
t03(A, A) -> atom_to_binary(A);
t03(_, B) -> B.
