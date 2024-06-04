-module(eqwater_sound_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: ab()}).
-type ab() :: atom() | binary().
-spec test36_pos(F1, F2) -> F3 when F1 :: fun((a) -> a |
                                                     z),
                                    F2 :: fun((b) -> b | z),
                                    F3 :: fun((a | b) -> z).
test36_pos(F1, F2) -> case F1 of F2 -> F2 end.
