-module(wip_maps_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec bad_mixed_update4(any()) -> term().
bad_mixed_update4(M) when is_map(M#{b => b, a := a}) ->
    M.
