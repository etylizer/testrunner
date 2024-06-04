-module(eqwater_maps_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_occ_07_neg(#{a := integer()} |
                     #{c := integer()}) -> #{b := integer()}.
map_occ_07_neg(#{a := _}) -> #{b => 0};
map_occ_07_neg(M) -> M.
