-module(t_maps_78).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec guard6(term(), term()) -> {map(), map()}.
guard6(M1, M2) when M1#{a := 1} == M2#{a := 1} ->
    {M1, M2}.
