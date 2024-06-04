-module(eqwater_lists_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_01([integer()] |
                  [atom()]) -> [integer()].
occ_list_01(L = [H | _]) when is_integer(H) -> L;
occ_list_01(_) -> [].
