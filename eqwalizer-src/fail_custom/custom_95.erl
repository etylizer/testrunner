-module(custom_95).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec keystore_6_neg() -> nok.
keystore_6_neg() ->
    lists:keystore(a, 1, non_list, {replacement}).
