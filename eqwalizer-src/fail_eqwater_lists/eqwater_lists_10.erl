-module(eqwater_lists_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_10([term()]) -> [].
occ_list_10([_, _ | _]) -> [];
occ_list_10([_]) -> [];
occ_list_10(L) -> L.
