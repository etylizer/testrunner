-module(eqwater_sound_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: ab()}).
-type ab() :: atom() | binary().
-spec base2(ab()) -> binary().
base2(A) when is_atom(A); is_number(A) ->
    atom_to_binary(A);
base2(B) -> B.
