-module(eqwater_maps_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_occ_03(#{a => term(), b => integer()}) -> #{a
                                                          := integer(),
                                                      b => integer()}.
map_occ_03(M = #{a := I}) when is_integer(I) -> M;
map_occ_03(M) -> M#{a => 0}.
