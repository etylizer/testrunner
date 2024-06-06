-module(eqwater_120).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ53_neg([term()],
                integer() | undefined) -> integer().
occ53_neg(L, undefined) when is_integer(L) -> 0;
occ53_neg(_, I) -> I.
