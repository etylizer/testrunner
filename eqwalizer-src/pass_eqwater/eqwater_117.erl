-module(eqwater_117).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ50(ok, integer() | undefined) -> integer().
occ50(_, undefined) -> 0;
occ50(_, I) -> I.
