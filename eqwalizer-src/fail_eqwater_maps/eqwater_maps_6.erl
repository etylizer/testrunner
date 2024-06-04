-module(eqwater_maps_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_occ_06_neg(#{a => integer()} | ok) -> ok.
map_occ_06_neg(#{a := I}) when is_integer(I) -> ok;
map_occ_06_neg(V) -> V.
