-module(eqwater_lists_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_08_neg([term()] | atom()) -> atom().
occ_list_08_neg([_ | _]) -> ok;
occ_list_08_neg(A) -> A.
