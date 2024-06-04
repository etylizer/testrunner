-module(eqwater_sound_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: ab()}).
-type ab() :: atom() | binary().
-spec t01(#rec1{}) -> binary().
t01(#rec1{id = A}) when is_atom(A) -> atom_to_binary(A);
t01(#rec1{id = B}) -> B.
