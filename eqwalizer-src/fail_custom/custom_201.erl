-module(custom_201).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec seq3_5_neg() -> [integer()].
seq3_5_neg() -> lists:seq(1, a, 1).
