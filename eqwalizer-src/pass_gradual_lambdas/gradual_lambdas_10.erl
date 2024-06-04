-module(gradual_lambdas_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec recursive_fold(map()) -> [term()].
recursive_fold(Map) ->
    maps:fold(fun F(K, true, Acc) -> F(K, false, Acc);
                  F(K, V, Acc) -> [{K, V} | Acc]
              end,
              [],
              Map).
