-module(custom_204).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec seq3_7_wip_neg(non_neg_integer(),
                     non_neg_integer()) -> [non_neg_integer()].
seq3_7_wip_neg(X, Y) -> lists:seq(X, X - Y, -1).
