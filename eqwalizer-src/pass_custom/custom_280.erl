-module(custom_280).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_flatten_nil_1([[atom()]],
                          [atom()]) -> [atom()].
lists_flatten_nil_1(L1, L2) ->
    lists:flatten([L1, L2, []]).
