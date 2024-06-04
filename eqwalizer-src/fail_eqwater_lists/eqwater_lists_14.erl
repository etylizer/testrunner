-module(eqwater_lists_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_14_neg([binary()] |
                      [atom()]) -> binary().
occ_list_14_neg([H | _]) when is_binary(H) -> H;
occ_list_14_neg([H | _]) -> atom_to_binary(H);
occ_list_14_neg(L) -> L.
