-module(custom_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec keyreplace() -> [{key1, value1} | {key2, value2}].
keyreplace() ->
    Res = lists:keyreplace(key,
                           1,
                           [{key1, value1}],
                           {key2, value2}),
    Res.
