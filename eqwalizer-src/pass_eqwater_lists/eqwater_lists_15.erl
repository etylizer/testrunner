-module(eqwater_lists_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_15([atom()] | [binary()]) -> [binary()].
occ_list_15(L) when is_binary(hd(L)) -> L;
occ_list_15(_) -> [].
