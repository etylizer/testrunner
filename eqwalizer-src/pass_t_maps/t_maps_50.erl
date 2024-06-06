-module(t_maps_50).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec slice_map(#{a() => n()} | [a()]) -> #{a() => n()}.
slice_map(#{} = M) -> M;
slice_map(_) -> #{}.
