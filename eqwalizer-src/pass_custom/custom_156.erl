-module(custom_156).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type plist(K, V) :: [K | {K, V}].
-spec test_plists_delete3(plist(k1 | pid(),
                                v1 | v2)) -> plist(k1 | pid(), v1 | v2).
test_plists_delete3(L) -> proplists:delete(k, L).
