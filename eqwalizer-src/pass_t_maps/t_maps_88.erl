-module(t_maps_88).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_update_with_1(#{string() => binary()},
                         fun((binary()) -> atom())) -> #{string() =>
                                                             binary() | atom()}.
test_update_with_1(Map, F) ->
    maps:update_with("", F, Map).
