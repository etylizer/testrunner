-module(custom_101).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec keytake_3_4_neg() -> nok.
keytake_3_4_neg() ->
    lists:keytake(a, non_num, []),
    nok.
