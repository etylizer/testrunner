-module(eqwater_aliases_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type occ02_in() :: a | {b, integer()}.
-type occ02_out() :: integer().
-spec occ02_cl(occ02_in()) -> occ02_out().
occ02_cl(a) -> 0;
occ02_cl({_, I}) -> I.
