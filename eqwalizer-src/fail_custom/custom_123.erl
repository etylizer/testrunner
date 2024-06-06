-module(custom_123).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type plist(K, V) :: [K | {K, V}].
-spec 'test_plists_get_value/3_overlap'(plist({k, v1},
                                              v2)) -> v1 | v2 | my_default.
'test_plists_get_value/3_overlap'(L) ->
    proplists:get_value(k, L, my_default).
