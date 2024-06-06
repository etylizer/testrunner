-module(t_maps_91).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_update_with_4(#{a := b},
                         fun((b) -> c)) -> #{a => b | c}.
test_update_with_4(Map, F) ->
    maps:update_with(a, F, a, Map).
