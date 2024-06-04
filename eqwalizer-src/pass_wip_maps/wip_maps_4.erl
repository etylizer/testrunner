-module(wip_maps_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec bad_mixed_update3(any()) -> term().
bad_mixed_update3(M) when is_map(M#{a := a, b => b}) ->
    M.
