-module(custom_131).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type plist(K, V) :: [K | {K, V}].
-spec test_plists_get_all_values2(plist({k, v},
                                        pid())) -> [pid() | default | v].
test_plists_get_all_values2(L) ->
    proplists:get_all_values(k, L).
