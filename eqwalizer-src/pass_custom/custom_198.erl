-module(custom_198).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec seq3_2_wip_neg() -> [pos_integer()].
seq3_2_wip_neg() -> lists:seq(0, 2, 1).
