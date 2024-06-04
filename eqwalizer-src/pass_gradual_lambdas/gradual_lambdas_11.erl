-module(gradual_lambdas_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec recursive_filtermap([boolean()]) -> [term()].
recursive_filtermap(L) ->
    lists:filtermap(fun F(true) -> F(false);
                        F(B) -> B
                    end,
                    L).
