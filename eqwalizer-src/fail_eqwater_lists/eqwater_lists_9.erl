-module(eqwater_lists_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_09([term()] | atom()) -> atom().
occ_list_09([_ | _]) -> ok;
occ_list_09([]) -> nil;
occ_list_09(A) -> A.
