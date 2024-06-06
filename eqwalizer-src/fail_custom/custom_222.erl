-module(custom_222).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec tc2_2_neg() -> {integer(), list()}.
tc2_2_neg() -> timer:tc(fun atom_to_list/1, not_a_list).
