-module(eqwater_maps_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_occ_05(#{a => integer(),
                   b => integer()}) -> #{a := integer(), b := integer()}.
map_occ_05(M = #{a := _, b := _}) -> M;
map_occ_05(M) -> M#{a => 0, b => 0}.
