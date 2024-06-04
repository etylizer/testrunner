-module(eqwater_lists_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_11_neg([atom()] |
                      [binary()]) -> [binary()].
occ_list_11_neg([_, X | _]) when is_atom(X) ->
    [atom_to_binary(X)];
occ_list_11_neg(L) -> L.
