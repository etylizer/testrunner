-module(t_maps_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec update_req_non_atom_neg(map()) -> map().
update_req_non_atom_neg(M) -> M#{1 := 1}.
