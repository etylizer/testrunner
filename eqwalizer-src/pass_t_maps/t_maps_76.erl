-module(t_maps_76).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec guard4(term()) -> map().
guard4(A) when is_map(A#{a := 1}) -> A.
