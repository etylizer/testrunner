-module(gradual_lambdas_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec recursive_map(#{boolean() =>
                          atom()}) -> #{boolean() => term()}.
recursive_map(M) ->
    maps:map(fun F(true, V) -> F(false, V);
                 F(false, V) -> atom_to_binary(V)
             end,
             M).
