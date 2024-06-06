-module(eqwater_119).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ52([term()],
            integer() | undefined) -> integer().
occ52(L, undefined) when is_list(L) -> 0;
occ52(_, I) -> I.
