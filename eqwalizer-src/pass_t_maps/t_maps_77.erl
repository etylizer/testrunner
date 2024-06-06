-module(t_maps_77).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec guard5(term(), term()) -> {map(), map()}.
guard5(M1, M2) when M1#{} == M2#{} -> {M1, M2}.
