-module(eqwater_lists_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_03([binary()] | [atom()]) -> [binary()].
occ_list_03(L = [H | _]) when is_binary(H) -> L;
occ_list_03(L) -> lists:map(fun atom_to_binary/1, L).
