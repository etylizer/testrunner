-module(custom_165).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type plist(K, V) :: [K | {K, V}].
-spec test_plists_from_map1() -> plist(a | pid(),
                                       b | true).
test_plists_from_map1() ->
    proplists:from_map(#{a => b, self() => true}).
