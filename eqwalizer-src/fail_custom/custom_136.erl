-module(custom_136).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_plists_get_keys1_neg([a |
                                 b |
                                 {c, {d, d}}]) -> [c].
test_plists_get_keys1_neg(L) -> proplists:get_keys(L).
