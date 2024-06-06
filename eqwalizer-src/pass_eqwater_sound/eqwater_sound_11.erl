-module(eqwater_sound_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test34_pos({a | b}, {b | c}) -> {b}.
test34_pos(AB, BC) -> case AB of BC -> BC end.
