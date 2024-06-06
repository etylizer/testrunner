-module(custom_132).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type plist(K, V) :: [K | {K, V}].
-spec test_plists_get_all_values3(plist(atom(),
                                        pid())) -> [pid()].
test_plists_get_all_values3(L) ->
    proplists:get_all_values(k, L).
