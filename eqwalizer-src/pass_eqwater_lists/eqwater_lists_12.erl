-module(eqwater_lists_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_list_12([atom()] | [binary()]) -> [binary()].
occ_list_12(L = [_, X | _]) when is_binary(X) -> L;
occ_list_12(_) -> [].
