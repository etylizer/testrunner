-module(t_maps_74).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a() :: atom().
-spec guard2(a()) -> none().
guard2(M) when is_map(M) -> M.
