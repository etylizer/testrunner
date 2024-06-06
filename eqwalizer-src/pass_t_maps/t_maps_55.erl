-module(t_maps_55).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec to_map1(term()) -> map().
to_map1(#{} = M) -> M;
to_map1(_) -> #{}.
