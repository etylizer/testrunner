-module(custom_223).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec tc2_3_neg() -> {integer(), list()}.
tc2_3_neg() ->
    timer:tc(fun atom_to_list/1,
             [this_is, the_wrong_arity]).